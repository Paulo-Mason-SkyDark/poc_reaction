import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:poc_reaction/reaction_store.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  _NumberPageState createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  final reactionTest = ReactionTest();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste Poc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (context) => Text(
                "${reactionTest.sdf}",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onClosed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  onClosed() {
    reactionTest.setSDF(true);
    if (reactionTest.sdf) {
      sequenceHighlight();
    }
  }

  sequenceHighlight() async {
    await reactionTest.t['med']!()
        .whenComplete(() => reactionTest.t['login']!().whenComplete(() => print("próximo highlight")));
    // await reactionTest.t['med']!()
    //     .then((value) async => {await reactionTest.t['login']!().whenComplete(() => print("Proximo highlight"))});
    // if (isMedEnd) {
    //   bool isLoginEnd = await reactionTest.t['login']!();
    //   if (isLoginEnd) {
    //     return "outra highlight";
    //   }
    // }
  }
}
