import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_tenis/ui/home/home_view.dart';
import 'package:table_tenis/ui/home/home_viewmodel.dart';


class TableTenis extends StatefulWidget {
  const TableTenis({Key? key}) : super(key: key);

  @override
  State<TableTenis> createState() => _TableTenisState();
}

class _TableTenisState extends State<TableTenis> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => HomeViewModel(),
      ),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),),
    );
  }
}
