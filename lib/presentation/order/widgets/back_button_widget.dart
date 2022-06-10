import 'package:flutter/material.dart';
import 'package:papay/presentation/routes/app_router.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: OutlinedButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text("Back to main menu"),
        ),
      ),
    );
  }
}
