import 'package:carousel_slider/carousel_slider.dart';
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
        leading: Consumer<PlayerProvider>(
          builder: (context, provider, child) {
            return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                provider.resetPlayer();
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _playerCardWidget(),
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
              child: Consumer2<GameProvider, PlayerProvider>(
                builder: (context, gameProvider, playerProvider, child) {
                  return RaisedButton(
                    child: Text('Create Player'),
                    onPressed: () {
                      playerProvider.setPlayerName(this._textController.text);
                      gameProvider.addPlayer(playerProvider.player);
                      playerProvider.resetPlayer();
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _playerCardWidget() {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Consumer<PlayerProvider>(
              builder: (context, provider, child) {
                return InkWell(
                  child: Image(image: AssetImage(provider.player.imagePath)),
                  onTap: () async {
                    await _setImageWidget(provider);
                  },
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
                  return _setLevelWidget(!this._isRandomize, provider);
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Consumer<PlayerProvider>(
                builder: (context, provider, child) {
                  return _setAbilityWidget(!this._isRandomize, provider);
                },
              )
            )
          ],
        ),
      ),
    );
  }

  Future _setImageWidget(PlayerProvider provider) async {
    await showDialog(
      context: context,
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true
        ),
        items: provider.nameImageList.map((predefinedPlayer) => GestureDetector(
          child: Card(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Image(image: AssetImage(predefinedPlayer.imagePath)),
                        Positioned.fill(
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                            child: Text(
                              predefinedPlayer.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: double.infinity,
                      child: Text(predefinedPlayer.description))
                  ]
              ),
            ),
          ),
          onTap: () {
            provider.selectPredefinedPlayer(predefinedPlayer);
            Navigator.pop(context);
          },
        )).toList(),
      )
    );
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
      onPressed: !isEditable? null : () async {
        await showDialog(
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
                onPressed: !isEditable? null : () async {
                  await showDialog(
                    context: context,
                    builder: (context) {
                      List<Widget> dialogWidgetList = [];

                      for(int y=0 ; y<initialAbilityValueList.length ; y++) {
                        dialogWidgetList.add(SimpleDialogOption(
                          child: Text('${initialAbilityValueList[y]}'),
                          onPressed: !isEditable? null : () {
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
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(provider.player.abilityList[x].iconPath),
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


