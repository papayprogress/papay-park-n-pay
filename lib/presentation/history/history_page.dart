import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papay/application/history_watcher/history_watcher_bloc.dart';
import 'package:papay/injection.dart';
import 'package:papay/presentation/core/app_theme.dart';
import 'package:papay/presentation/routes/app_router.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return BlocProvider(
      create: (context) => getIt<HistoryWatcherBloc>()
        ..add(const HistoryWatcherEvent.watchAllStarted()),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              // Positioned(
              //   bottom: -100,
              //   right: -60,
              //   child: Image.asset('assets/other/gear.png'),
              // ),
              ListView(
                padding: const EdgeInsets.all(30),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "History Page",
                      style: AppFont.headline3,
                    ),
                    subtitle: Text(
                      "Menampilkan histori setiap kali parkir",
                      style: AppFont.subhead3
                          .copyWith(color: AppColor.greyPrimary),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: AppColor.primary,
                      child: IconButton(
                        color: AppColor.white,
                        onPressed: () {
                          context.router.push(const NotificationRoute());
                        },
                        icon: const Icon(Icons.notifications),
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 16),
                  BlocBuilder<HistoryWatcherBloc, HistoryWatcherState>(
                    builder: (context, state) {
                      return state.map(
                        initial: (_) {
                          return Container(
                            height: 200,
                            color: AppColor.greyPrimary,
                          );
                        },
                        loadInProgress: (_) {
                          return Container(
                            height: 200,
                            color: AppColor.greyPrimary,
                            child: const Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                          );
                        },
                        loadSuccess: (data) {
                          return Column(
                            children: data.histories
                                .map(
                                  (e) => ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical: 16,
                                    ),
                                    onTap: () {
                                      context.router
                                          .push(HistoryDetailRoute(history: e));
                                    },
                                    leading: CircleAvatar(
                                      backgroundColor: e.paymentStatus
                                          ? Colors.red
                                          : Colors.green,
                                      child: FaIcon(
                                        e.paymentStatus
                                            ? Icons.error
                                            : FontAwesomeIcons.check,
                                      ),
                                    ),
                                    title: Text(e.name),
                                    subtitle: Text(
                                        '${e.date} | ${e.startedAt}-${e.finishedAt}'),
                                    trailing: Text(
                                      'Rp. ${e.paymentTotal}',
                                      style: const TextStyle(color: Colors.red),
                                    ),
                                  ),
                                )
                                .toList(),
                          );
                        },
                        loadFailure: (e) {
                          return Container(
                            height: 200,
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                e.historyFailure.map(
                                  unexpected: (_) {
                                    return 'Unexpected Error';
                                  },
                                  inSufficientPermission: (_) {
                                    return 'Insufficent Error';
                                  },
                                  unableToUpdate: (_) {
                                    return 'Unable to Update Error';
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  // for (int i = 0; i < 3; i++) ...[
                  //   const SizedBox(height: 16),
                  //   Text('Bulan ke $i'),
                  //   for (int i = 0; i < 3; i++)

                  // ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
