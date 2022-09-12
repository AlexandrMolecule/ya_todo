import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:y_todo/src/core/cubit/navigation_cubit.dart';
import 'package:y_todo/src/core/l10n/l10n.dart';
import 'package:y_todo/src/feature/tasks/bloc/tasks_bloc.dart';
import 'package:y_todo/src/feature/tasks/widget/floating_button.dart';
import 'package:y_todo/src/feature/tasks/widget/tasks_card.dart';
import 'package:y_todo/src/feature/tasks/widget/tasks_header.dart';

class TasksScreen extends StatefulWidget {
  final GlobalKey<SliverAnimatedListState> listKey;

  const TasksScreen({Key? key, required this.listKey}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    context.read<TasksBloc>().add(const TaskEvent.fetchTasks());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return BlocListener<TasksBloc, TaskState>(
      listener: (context, state) => state.mapOrNull<void>(failure: (error) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              content: Text(error.errorMessage),
              duration: const Duration(seconds: 10),
            ),
          );
      }),
      child: SafeArea(
        child: Scaffold(
          floatingActionButton: TasksFloatButton(
              onPressed: () =>
                  BlocProvider.of<NavigationCubit>(context).goToEdit()),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverPersistentHeader(
                delegate: HeaderDelegate(
                  expandedHeight: 132,
                  onFilterTap: () {
                    context
                        .read<TasksBloc>()
                        .add(const TaskEvent.toggleFilter());
                  },
                ),
                pinned: true,
              ),
              BlocBuilder<TasksBloc, TaskState>(
                builder: (context, state) {
                  if (state.tasks.isEmpty) {
                    if (state.isLoading) {
                      return const SliverFillRemaining(
                          child: Center(child: CircularProgressIndicator()));
                    } else {
                      return SliverToBoxAdapter(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)?.empty ?? "",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      );
                    }
                  } else {
                    return TasksBox(
                      listKey: widget.listKey,
                      scrollController: scrollController,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
