import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _CustomButton(),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        child: Container(),
      ),
    );
  }

  String nullAwareMethod() {
    // This line is just an example to show when you have a null variable.
    String name = null;

    return name ?? "some default name";
  }

  void networkRequest() {
    // We do some fetching and we get a response

    final response = null;

    // debugPrint will display more data in the console compared to a normal print.
    debugPrint(response.toString());
  }
}

class _AlotOfThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
        Text('hello', style: textTheme.bodyText1),
      ],
    );
  }
}

class _CustomHeadlineText extends StatelessWidget {
  final String headline;

  const _CustomHeadlineText({
    Key key,
    @required this.headline,
  })  : assert(
          headline != null,
          'A non-null String must be provided to a Text widget.',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
