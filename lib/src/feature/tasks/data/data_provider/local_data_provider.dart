import 'dart:developer';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:y_todo/src/core/configuration/configuration.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

abstract class ILocalDataProvider {
  Future<int> createTask(Task task);
  Future<List<Task>?> getAllTasks();
  Future<int> updateTask(Task task);
  Future<void> updateTaskList(List<Task> tasks);
  Future<int> deleteTask(String id);
  Future<int?> getActualRevison();
  Future<int> updateRevison([int? newRevision]);
  Future<int> deleteTaskList();
  Future<bool> isTaskExist(String id);
  // Future<int> createRevison(int newRevision);
}

class LocalDataProviderImpl implements ILocalDataProvider {
  static final LocalDataProviderImpl db = LocalDataProviderImpl._();
  LocalDataProviderImpl._();

  static Database? _database;
  static const _tasks = "tasks";
  static const _revision = "revision";

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await initDB();
      return _database!;
    }
  }

  Future<Database> initDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, LocalConfiguration.dbName);

    final db = await openDatabase(path, version: 1, onCreate: _createTables);
    return db;
  }

  // Создаем таблицы
  Future<void> _createTasksTable(Database db, int version) async {
    await db.execute("CREATE TABLE $_tasks ("
        "id TEXT PRIMARY KEY,"
        "text TEXT,"
        "color TEXT,"
        "importance TEXT,"
        "deadline INTEGER,"
        "done BOOLEAN NOT NULL,"
        "created_at INTEGER,"
        "changed_at INTEGER,"
        "last_updated_by INTEGER"
        ")");
    return;
  }

  Future<void> _createRevisionTable(Database db, int version) async {
    await db.execute('CREATE TABLE $_revision (revision INTEGER PRIMARY KEY)');
    return;
  }

  Future<void> _createTables(Database db, int version) async {
    await _createTasksTable(db, version);
    await _createRevisionTable(db, version);
  }

  // Методы
  @override
  Future<int> createTask(Task task) async {
    final db = await database;
    final res = await db.insert(_tasks, task.toJson());

    return res;
  }

  @override
  Future<List<Task>?> getAllTasks() async {
    final db = await database;
    final res = await db.query(_tasks);
    final list = res.isNotEmpty ? res.map(Task.fromJson).toList() : null;
    return list;
  }

  @override
  Future<int> updateTask(Task task) async {
    final db = await database;
    final res = await db
        .update(_tasks, task.toJson(), where: "id = ?", whereArgs: [task.id]);

    return res;
  }

  @override
  Future<bool> isTaskExist(String id) async {
    final db = await database;
    final res = await db.query(_tasks, where: "id = ?", whereArgs: [id]);

    if (res.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<int> deleteTask(String id) async {
    final db = await database;
    final res = await db.delete(_tasks, where: "id = ?", whereArgs: [id]);
    return res;
  }

  @override
  Future<int?> getActualRevison() async {
    final db = await database;
    final res = await db.query(
      _revision,
    );
    log(res.toString());
    if (res.isNotEmpty) {
      final revision = res.first.values.first;
      final i = revision is int ? revision : null;
      return i;
    } else {
      return null;
    }
  }

  @override
  Future<int> updateRevison([int? serverRevision]) async {
    final db = await database;
    int res;
    final actualRevision = await getActualRevison();
    if (actualRevision == null && serverRevision == null) {
      res = await db.insert(_revision, {"revision": 0});
    } else if (serverRevision != null && actualRevision != null) {
      res = await db.update(_revision, {"revision": serverRevision});
    } else if (serverRevision == null && actualRevision != null) {
      res = await db.update(_revision, {"revision": actualRevision + 1});
    } else {
      res = await db.insert(_revision, {"revision": serverRevision});
    }
    return res;
  }

  @override
  Future<void> updateTaskList(List<Task> tasks) async {
    final db = await database;
    await deleteTaskList();
    for (final e in tasks) {
      await db.insert(_tasks, e.toJson());
    }
  }

  @override
  Future<int> deleteTaskList() async {
    final db = await database;
    final res = await db.delete(_tasks);
    return res;
  }
}
