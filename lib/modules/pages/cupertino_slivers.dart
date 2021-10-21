import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/movie_card.dart';

class CupertinoSlivers extends StatefulWidget {
  const  CupertinoSlivers({Key? key}) : super(key: key);

  @override
  State<CupertinoSlivers> createState() => _CupertinoSliversState();
}

class _CupertinoSliversState extends State<CupertinoSlivers> {
  List<Widget> items = <Widget>[];
  bool toogle = false;

  @override
  void initState() {
    super.initState();
    items.add(_item());
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Theme.of(context).primaryColor,
      child: Scrollbar(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              backgroundColor: Theme.of(context).primaryColor,
              leading: CupertinoSwitch(
                value: toogle,
                onChanged: (bool value) {
                  setState(() {
                    toogle = value;
                  });
                },
              ),
              largeTitle: const  Text(
                'Olá Leonardo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              trailing: CupertinoButton(
                onPressed: () => showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: const Text('Aviso'),
                    content: const Text(
                        'Faça Scroll para baixo para visualizar o "CupertinoSliverRefreshControl".\n\nOu para cima para visualizar o "CupertinoSliverNavigationBar".'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        child: const Text('Dica sobre o Card?'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          showCupertinoDialog<void>(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoAlertDialog(
                              title: const Text('Sobre o MovieCard'),
                              content: const Text(
                                  'Pressione o MovieCard para visualizar o "CupertinoContextMenu".'),
                              actions: <CupertinoDialogAction>[
                                CupertinoDialogAction(
                                  child: const Text('Entendido'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text('Entendido'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),
                child: const  Icon(Icons.info),
              ),
            ),
            CupertinoSliverRefreshControl(
              refreshTriggerPullDistance: 100.0,
              refreshIndicatorExtent: 60.0,
              onRefresh: () async {
                await Future<void>.delayed(const Duration(milliseconds: 1000));
                setState(() {
                  if (items.length == 4) {
                    items.clear();
                  }
                  items.insert(
                    0,
                    _item(),
                  );
                });
              },
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => items[index],
                childCount: items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item() {
    return CupertinoContextMenu(
      child:  const MovieCard(),
      actions: <Widget>[
        CupertinoContextMenuAction(
          child: const Text(
            'Assitir 🎞',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoContextMenuAction(
          child: const Text(
            'Indicar ao amigo 📬',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoContextMenuAction(
          child: const Text(
            'Avaliar ⭐️',
            style: TextStyle(fontSize: 16),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
