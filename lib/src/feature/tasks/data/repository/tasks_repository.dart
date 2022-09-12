
import 'package:y_todo/src/core/domain/exception/api_exception.dart';
import 'package:y_todo/src/feature/tasks/data/data_provider/local_data_provider.dart';
import 'package:y_todo/src/feature/tasks/data/data_provider/remote_data_provider.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';

abstract class ITasksRepository {
  // Создать новую, пустую таску
  Task createTask();

  // Получить все таски
  Future<List<Task>> getAllTasks();

  Future<void> addTask(Task task);

  Future<void> updateTask(Task task);

  Future<void> deleteTask(String id);

  // решил объединить добавление и обновление в одном методе
  Future<void> saveTask(Task task);
}

class TasksRepositoryImpl implements ITasksRepository {
  TasksRepositoryImpl(
      {required final IRemoteDataProvider remoteDataProvider,
      required final ILocalDataProvider localDataProvider})
      : _localDataProvider = localDataProvider,
        _remoteDataProvider = remoteDataProvider;

  final IRemoteDataProvider _remoteDataProvider;
  final ILocalDataProvider _localDataProvider;

  @override
  Task createTask() => Task.create();

  // получение всех задач
  // информация с устройства приоритетна, если ее нет, то обращаемся к серверу
  // если она есть, проверим, совпадает ли ревизия с сервером, если нет, то обновим список на сервере и локальную ревизию
  @override
  Future<List<Task>> getAllTasks() async {
    List<Task> tasks;
    final result = await _localDataProvider.getAllTasks();
    if (result != null) {
      tasks = result;

      // await _synchronize(localTasks: tasks);

      return tasks;
    } else {
      return [];
    }
    //  else {
    // final result = await _remoteDataProvider.getTaskList();
    // tasks = result.list;
    // final revision = result.revision;

    // await _localDataProvider.updateTaskList(tasks);
    // await _localDataProvider.updateRevison(revision);
    // return tasks;
    // }
  }

  @override
  Future<void> addTask(Task task) async {
    try {
      await _localDataProvider.createTask(task);
      // final locRevision = await _localDataProvider.getActualRevison();
      // final response =
      //     await _remoteDataProvider.addTask(task, locRevision ?? 0);
      // await _localDataProvider.updateRevison(response.revision);
    } on ApiClientException catch (e) {
      if (e.type == ApiClientExceptionType.network ||
          e.type == ApiClientExceptionType.unsynchronizedData ||
          e.type == ApiClientExceptionType.serverError) {
        // await _localDataProvider.updateRevison();
        // final localTasks = await _localDataProvider.getAllTasks();
        // await _synchronize(localTasks: localTasks ?? []);
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> updateTask(Task task) async {
    try {
      await _localDataProvider.updateTask(task);
      // final locRevision = await _localDataProvider.getActualRevison();
      // final response = await _remoteDataProvider.updateTask(
      //     task: task, revision: locRevision ?? 0, id: task.id);
      // await _localDataProvider.updateRevison(response.revision);
    } on ApiClientException catch (e) {
      if (e.type == ApiClientExceptionType.network ||
          e.type == ApiClientExceptionType.unsynchronizedData ||
          e.type == ApiClientExceptionType.serverError) {
        await _localDataProvider.updateRevison();
        // final localTasks = await _localDataProvider.getAllTasks();
        // await _synchronize(localTasks: localTasks ?? []);
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<void> saveTask(Task task) async {
    final isTaskExist = await _localDataProvider.isTaskExist(task.id);
    if (isTaskExist) {
      await updateTask(task);
    } else {
      await addTask(task);
    }
  }

  @override
  Future<void> deleteTask(String id) async {
    try {
      await _localDataProvider.deleteTask(id);
      // final locRevision = await _localDataProvider.getActualRevison();
      // final response = await _remoteDataProvider.deleteTask(
      //     revision: locRevision ?? 0, id: id);
      // await _localDataProvider.updateRevison(response.revision);
    } on ApiClientException catch (e) {
      if (e.type == ApiClientExceptionType.network ||
          e.type == ApiClientExceptionType.unsynchronizedData ||
          e.type == ApiClientExceptionType.serverError) {
        // await _localDataProvider.updateRevison();
        // final localTasks = await _localDataProvider.getAllTasks();
        // await _synchronize(localTasks: localTasks ?? []);
      } else {
        rethrow;
      }
    }
  }

  // Future<void> _synchronize({required List<Task> localTasks}) async {
  //   final localRevision = await _localDataProvider.getActualRevison();
  //   try {
  //     // ревизия сервера
  //     final remoteResult = await _remoteDataProvider.getTaskList();
  //     final remoteRevision = remoteResult.revision;

  //     if (localRevision != remoteRevision) {
  //       // обновляем список на сервере и обновляем локальную ревизию
  //       final newRevision = await _remoteDataProvider.updateTaskList(
  //           taskList: localTasks, revision: remoteRevision);
  //       await _localDataProvider.updateRevison(newRevision.revision);
  //     }
  //   } on ApiClientException catch (e) {
  //     if (e.type == ApiClientExceptionType.network ||
  //         e.type == ApiClientExceptionType.unsynchronizedData ||
  //         e.type == ApiClientExceptionType.serverError) {
  //       log('not connected');
  //     } else {
  //       rethrow;
  //     }
  //   }
  // }
}
