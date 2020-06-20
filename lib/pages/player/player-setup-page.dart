import 'package:coka/providers/game-provider.dart';
import 'package:coka/providers/player-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerSetupPage extends StatefulWidget {
  @override
  _PlayerSetupPageState createState() => _PlayerSetupPageState();
}

class _PlayerSetupPageState extends State<PlayerSetupPage> {
  TextEditingController _textController = TextEditingController();
  bool _isRandomize = false;

  @override
  Widget build(BuildContext context) {
    final Map parameters = ModalRoute.of(context).settings.arguments as Map;

    this._isRandomize = (parameters != null)? parameters['isRandomize'] : false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Setup Player'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              this._isRandomize? _randomizePlayerCard() : _selectPlayerCard(),
              !this._isRandomize? SizedBox.shrink() : Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Consumer<PlayerProvider>(
                  builder: (context, provider, child) {
                    return RaisedButton(
                      child: Text('Randomize'),
                      onPressed: () {
                        provider.randomizePlayer();
                      },
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Consumer<PlayerProvider>(
                  builder: (context, provider, child) {
                    return RaisedButton(
                      child: Text('Create Player'),
                      onPressed: () {
                        provider.savePlayer();
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectPlayerCard() {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Selector<PlayerProvider, String>(
              selector: (context, provider) => provider.player.imagePath,
              builder: (context, imagePath, child) {
                return InkWell(
                  child: Image(image: AssetImage(imagePath)),
                  onTap: () {},
                );
              },
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Selector<PlayerProvider, String>(
                selector: (context, provider) => provider.player.name,
                builder: (context, playerName, child) {
                  return _setNameWidget(playerName);
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Consumer<PlayerProvider>(
                builder: (context, provider, child) {
                  return _setLevelWidget(true, provider);
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Consumer<PlayerProvider>(
                builder: (context, provider, child) {
                  return _setAbilityWidget(true, provider);
                },
              )
            )
          ],
        ),
      ),
    );
  }

  Widget _randomizePlayerCard() {
    return Card();
  }

  Widget _setNameWidget(String playerName) {
    this._textController.text = playerName;

    return TextField(
      controller: this._textController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(hintText: 'Player Name')
    );
  }

  Widget _setLevelWidget(bool isEditable, PlayerProvider provider) {
    return RaisedButton(
      child: Text('Level ${provider.player.level}'),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              List<Widget> dialogWidgetList = [];

              for(int x=0 ; x<provider.initialLevelValueList.length ; x++) {
                dialogWidgetList.add(SimpleDialogOption(
                  child: Text('Level ${provider.initialLevelValueList[x]}'),
                  onPressed: !isEditable? null : () {
                    provider.setPlayerLevel(provider.initialLevelValueList[x]);
                    Navigator.pop(context);
                  },
                ));
              }

              return SimpleDialog(children: dialogWidgetList,);
            }
        );
      },
    );
  }

  Widget _setAbilityWidget(bool isEditable, PlayerProvider provider) {
    List<Widget> tempWidgetList = [];
    List<int> initialAbilityValueList = provider.initialAbilityValueList;

    for(int x=0 ; x<provider.player.abilityList.length ; x++) {
      tempWidgetList.add(Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: <Widget>[
            Container(
              width: 50,
              child: RaisedButton(
                child: Text('${provider.player.abilityList[x].value}'),
                onPressed: !isEditable? null : () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      List<Widget> dialogWidgetList = [];

                      for(int y=0 ; y<initialAbilityValueList.length ; y++) {
                        dialogWidgetList.add(SimpleDialogOption(
                          child: Text('${initialAbilityValueList[y]}'),
                          onPressed: () {
                            provider.player.abilityList[x].value = initialAbilityValueList[y];
                            provider.setPlayerAbility(x, provider.player.abilityList[x]);
                            Navigator.pop(context);
                          },
                        ));
                      }

                      return SimpleDialog(
                        children: dialogWidgetList,
                      );
                    }
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/test.jpg'),
              ),
            ),
            Text(provider.player.abilityList[x].name)
          ],
        ),
      ));
    }

    return Column(children: tempWidgetList);
  }
}


