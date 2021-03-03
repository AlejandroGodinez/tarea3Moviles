import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tarea3/bloc/front_bloc.dart';

class Front extends StatefulWidget {
  Front({Key key}) : super(key: key);

  @override
  _FrontState createState() => _FrontState();
}

class _FrontState extends State<Front> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Guess the word!', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.green,
        ),
        body: BlocProvider(
          create: (context) => FrontBloc(),
          child: BlocConsumer<FrontBloc, FrontState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is JuegoIniciadoState) {
                return Container(
                    child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(state.titulo),
                            SizedBox(height: 10.0),
                            Text(
                              state.palabra,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              state.contador.toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                    // color: Colors.green,
                                    child: Text(
                                      'SKiP',
                                      // style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(SkipEvent());
                                    }),
                                MaterialButton(
                                    color: Colors.green,
                                    child: Text(
                                      'GOT IT',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(GotEvent());
                                    }),
                                MaterialButton(
                                    // color: Colors.green,
                                    child: Text(
                                      'END GAME',
                                      // style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(EndEvent());
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              } else if (state is JuegoNextState) {
                return Container(
                    child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(state.titulo),
                            SizedBox(height: 10.0),
                            Text(
                              state.palabra,
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              state.contador.toString(),
                              style: TextStyle(fontSize: 12),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                    // color: Colors.green,
                                    child: Text(
                                      'SKIP',
                                      // style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(SkipEvent());
                                    }),
                                MaterialButton(
                                    color: Colors.green,
                                    child: Text(
                                      'GOT IT',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(GotEvent());
                                    }),
                                MaterialButton(
                                    // color: Colors.green,
                                    child: Text(
                                      'END GAME',
                                      // style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<FrontBloc>(context)
                                          .add(EndEvent());
                                    }),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              } else if (state is JuegoEndState) {
                return Container(
                    child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(state.titulo),
                            SizedBox(height: 10.0),
                            Text(
                              state.contador.toString(),
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            MaterialButton(
                                color: Colors.green,
                                child: Text(
                                  'PLAY AGAIN',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  BlocProvider.of<FrontBloc>(context)
                                      .add(StartEvent());
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              } else
                return Container(
                    child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text('Get ready to'),
                            SizedBox(height: 10.0),
                            Text(
                              'Guess the word!',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            MaterialButton(
                                color: Colors.green,
                                child: Text(
                                  'PLAY',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  BlocProvider.of<FrontBloc>(context)
                                      .add(StartEvent());
                                })
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
            },
          ),
        ));
  }
}
