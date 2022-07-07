import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("HomeView"),
        ),
        body: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  model.goToDetails();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 32),
                  color: Colors.red,
                  height: 50,
                  width: 100,
                  child: Center(child: Text("Click Me")),
                ),
              ),
              Text("count is = ${model.count}"),
              GestureDetector(
                onTap: model.getUserName,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 32),
                  color: Colors.red,
                  height: 50,
                  width: 150,
                  child: Center(child: Text("Get User Name")),
                ),
              ),
              Text("UserName is = ${model.userName}"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
