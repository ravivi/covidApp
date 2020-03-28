import 'package:covid_app/provider/Bilan_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  bool _isInit = true;
  bool _isLoaded = false;
  Map<String, dynamic> bilan = {};

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoaded = true;
      });
      accessBilan().then((_) {
        setState(() {
          _isLoaded = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  Future accessBilan() async {
    Map<String, dynamic> res =
        await Provider.of<Bilan_Provider>(context, listen: false)
            .fetchAllBilan();
    setState(() {
      bilan = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Bilan Mondial",
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Card(
                  child: Container(
                    height: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.height / 1.5
                        : MediaQuery.of(context).size.height + 100,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "images/bilan2.jpg",
                          height: 200,
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Nombre de Malade:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              _isLoaded
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : Text(
                                      "${bilan["latest"]["confirmed"]}",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Nombre de Mort:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              _isLoaded
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : Text(
                                      "${bilan["latest"]["deaths"]}",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Nombre de Guéris:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "10 000",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Pays Touchés:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontStyle: FontStyle.italic),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "189 sur 197",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2,
                            child: MaterialButton(
                              color: Colors.green[700],
                              child: Text(
                                "Détails par zone",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                _onButton();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Bilan Local",
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          child: Card(
            child: Container(
              height:
                  (MediaQuery.of(context).orientation == Orientation.portrait)
                      ? MediaQuery.of(context).size.height / 2
                      : MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/bilan3.jpg",
                    height: 200,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Nombre de Malade:",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "96",
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Nombre de Mort:",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Nombre de Guéris:",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _onButton() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white70,
              centerTitle: true,
              title: Text(
                "Statistique Mondial",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
            ),
            body: _isLoaded
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemCount: bilan["locations"].length,
                    itemBuilder: (context, i) {
                      return Card(
                        elevation: 5,
                        child: Container(
                          color: Colors.white70,
                          alignment: Alignment.center,
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          child: ListTile(
                            //leading: Text(bilan["locations"][i]["country"]),
                            leading: Text(
                              "${bilan["locations"][i]["country"]}",
                              style: TextStyle(
                                  color: Colors.green[300],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),

                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Malade",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${bilan["locations"][i]["latest"]["confirmed"]}",
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //Text(bilan["locations"][i]["country"]["confirmed"]),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Mort",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${bilan["locations"][i]["latest"]["deaths"]}",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //Text(bilan["locations"][i]["country"]["deaths"]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          );
        });
  }
}
