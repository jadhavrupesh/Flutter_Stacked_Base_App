import 'package:flutter/material.dart';
import 'package:flutter_base/ui/Details/details_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
      ),
      viewModelBuilder: () => DetailsViewModel(),
    );
  }
}
