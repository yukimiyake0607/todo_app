import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/presentation/core/bottom_navigation/bottom_navigation_provider.dart';

class BottomNavigation extends ConsumerWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNavigationNum = ref.watch(bottomNavigationProvider);
    return BottomNavigationBar(
      currentIndex: bottomNavigationNum,
      onTap: (value) {
        ref.read(bottomNavigationProvider.notifier).state = value;
      },
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list_outlined),
          label: 'リスト',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.check_box_outlined),
          label: '完了',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.run_circle),
          label: '長期目標',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          label: 'ポモドーロ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'プロフィール',
        )
      ],
    );
  }
}
