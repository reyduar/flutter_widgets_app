import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
        content: const Text('This is a custom snack bar!'),
        action: SnackBarAction(label: 'Ok!', onPressed: () {}),
        duration: const Duration(seconds: 2));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('This is an alert dialog!'),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('No')),
                FilledButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Yes'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text('Ullamco fugiat est culpa laborum ullamco.')
                  ]);
                },
                child: const Text('Show Licenses'),
              ),
              FilledButton(
                onPressed: () => openDialog(context),
                child: const Text('Show Dialogs'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Show Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined),
        ));
  }
}
