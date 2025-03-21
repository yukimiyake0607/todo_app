import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/presentation/providers/auth/auth_provider.dart';

class AuthWhiteButton extends ConsumerWidget {
  final String _buttonTitle;
  final VoidCallback _onPressed;

  const AuthWhiteButton({
    super.key,
    required String buttonTitle,
    required VoidCallback onPressed,
  })  : _buttonTitle = buttonTitle,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authActionStateProvider);
    final isLoading = authState is AsyncLoading;
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFF97316),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: ElevatedButton(
        onPressed: () {
          isLoading ? null : _onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Text(
          _buttonTitle,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF97316),
          ),
        ),
      ),
    );
  }
}
