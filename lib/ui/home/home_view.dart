import 'package:flutter/material.dart';
import 'package:table_tenis/ui/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  // bool isSelect = true;
  //
  // void isSelectTrue() {
  //   isSelect = !isSelect;
  // }

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final models = Provider.of<HomeViewModel>(context);
    final model = Provider.of<HomeViewModel>(context, listen: false);
    return Scaffold(
      backgroundColor: model.isSelect ? Colors.green : Colors.red,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: models.isSelect ? Colors.red : Colors.green,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 200,
          height: 50,
          child: TextButton(
            autofocus: true,
            onPressed: () {
              model.isSelectTrue();
              setState(){}
            },
            child: Text(
              models.isSelect ? 'Free' : 'Busy',
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
