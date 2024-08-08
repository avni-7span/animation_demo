import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationDemo extends StatefulWidget {
  const LottieAnimationDemo({super.key});

  @override
  State<LottieAnimationDemo> createState() => _LottieAnimationDemoState();
}

class _LottieAnimationDemoState extends State<LottieAnimationDemo> {
  bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLoading == null
                ? SizedBox()
                : isLoading == true
                    ? LottieBuilder.asset(
                        height: 200,
                        width: 200,
                        'animations/loading.json',
                        repeat: true,
                        reverse: false,
                      )
                    : LottieBuilder.asset(
                        height: 100,
                        width: 100,
                        'animations/done.json',
                        repeat: false,
                        reverse: false,
                      ),
            const SizedBox(height: 20),
            Text(isLoading == null
                ? 'Total amount : 5000K'
                : isLoading == true
                    ? 'Please wait a moment...'
                    : 'Transaction is successfully completed'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                await Future.delayed(Duration(seconds: 2));
                setState(() {
                  isLoading = false;
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  shape: const RoundedRectangleBorder()),
              child: const Text(
                'Make the transaction',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
