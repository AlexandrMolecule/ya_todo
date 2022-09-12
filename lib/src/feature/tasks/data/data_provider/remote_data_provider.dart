import 'dart:developer';
import 'package:y_todo/src/core/configuration/configuration.dart';
import 'package:y_todo/src/core/domain/network_client.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task_list.dart';
import 'package:y_todo/src/feature/tasks/domain/model/task_response.dart';

abstract class IRemoteDataProvider {
  // получаем все таски
  Future<TaskList> getTaskList();
  // обновляем лист тасок
  Future<TaskList> updateTaskList(
      {required List<Task> taskList, required int revision});

  // Получить элемент списка
  Future<TaskR> getTask(String id);

  // Добавить элемент списка
  Future<TaskR> addTask(Task task, int revision);

  // Изменить элемент списка
  Future<TaskR> updateTask(
      {required Task task, required int revision, required String id});

  // Удалить элемент списка
  Future<TaskR> deleteTask({required String id, required int revision});
}

class RemoteDataProviderImpl implements IRemoteDataProvider {
  final INetworkClient _client;
  RemoteDataProviderImpl(this._client);

  @override
  Future<TaskR> addTask(Task task, int revision) async {
    final jsonTask = task.toJson();
    final body = {'element': jsonTask};
    final response = await _client.post(NetworkConfiguration.list, body,
        taskParser, null, {NetworkConfiguration.revisionHeader: revision});
    return response;
  }

  @override
  Future<TaskR> deleteTask({required String id, required int revision}) async {
    final response = await _client.delete('${NetworkConfiguration.list}$id',
        taskParser, null, {NetworkConfiguration.revisionHeader: revision});
    return response;
  }

  @override
  Future<TaskR> getTask(String id) async {
    final response =
        await _client.get('${NetworkConfiguration.list}$id', taskParser);
    return response;
  }

  @override
  Future<TaskList> getTaskList() async {
    final response = await _client.get(
      NetworkConfiguration.list,
      taskListParser,
    );
    return response;
  }

  @override
  Future<TaskR> updateTask(
      {required Task task, required int revision, required String id}) async {
    final jsonTask = task.toJson();
    final body = {'element': jsonTask};
    final response = await _client.put('${NetworkConfiguration.list}$id', body,
        taskParser, null, {NetworkConfiguration.revisionHeader: revision});
    return response;
  }

  @override
  Future<TaskList> updateTaskList(
      {required List<Task> taskList, required int revision}) async {
    final jsonListTask = taskList
        .map(
          (e) => e.toJson(),
        )
        .toList();
    log(jsonListTask.toString());
    final response = await _client.patch(
        NetworkConfiguration.list,
        {"list": taskList},
        taskListParser,
        null,
        {NetworkConfiguration.revisionHeader: revision});
    return response;
  }

  //HELP METHODS

  TaskList taskListParser(dynamic json) {
    final jsonMap = json as Map<String, dynamic>;
    final response = TaskList.fromJson(jsonMap);
    return response;
  }

  TaskR taskParser(dynamic json) {
    final jsonMap = json as Map<String, dynamic>;
    final taskJson = jsonMap;
    final response = TaskR.fromJson(taskJson);
    return response;
  }
}
