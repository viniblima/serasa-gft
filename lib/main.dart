import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:serasa_bloc/controllers/home.controller.dart';
import 'package:serasa_bloc/widgets/balance.widget.dart';
import 'package:serasa_bloc/widgets/financial_situation.widget.dart';
import 'package:serasa_bloc/widgets/header_home.widget.dart';
import 'package:serasa_bloc/widgets/list_action_button_home.widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final HomeControllerX homeControllerX =
      Get.put<HomeControllerX>(HomeControllerX());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFFD82A7F),
          background: Color(0xFFF6F7F9),
          error: Colors.red,
          brightness: Brightness.dark,
          secondary: Color(0xFFD00072),
          // background: Color(0xFF444654),
          onBackground: Color(0xFFA5A6AB),
          // surface: Color(0xFF202123),
          surface: Colors.white,
          onError: Colors.red,
          onPrimary: Color(0xFFF8FFFB),
          onSecondary: Color(0xFFF8FFFB),
          onSurface: Color(0xFFB7B8BC),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          titleMedium: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            color: Color(0xFFA5A6AB),
          ),
          displayMedium: TextStyle(
            fontSize: 18,
            color: Color(0xFF2D3248),
            fontWeight: FontWeight.bold,
          ),
          displayLarge: TextStyle(
            fontSize: 38,
            color: Color(0xFF2D3248),
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            fontSize: 16,
            color: Color(0xFF2D3248),
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController controller;
  final HomeControllerX _homeControllerX = Get.find<HomeControllerX>();
  @override
  void initState() {
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
    initPage();
    super.initState();
  }

  Future<void> initPage() async {
    await Future.delayed(const Duration(seconds: 3));
    _homeControllerX.updateLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   // title: Text(widget.title),
      // ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(10.0), // here the desired height
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Obx(
        () => _homeControllerX.loading.value
            ? SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                // padding: EdgeInsets.only(
                //   top: AppBar().preferredSize.height,
                // ),
                child: Column(
                  children: <Widget>[
                    // Pseudo header
                    HeaderHome(),
                    Balance(),
                    ListActionsHome(),
                    FinancialSituation(),
                  ],
                ),
              ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: TabBar(
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xFF0B65E0), width: 4.0),
            insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
          ),
          indicatorPadding: EdgeInsets.only(bottom: 16),
          controller: controller,
          tabs: [
            Tab(
              child: Container(
                height: 100,
                child: const Center(
                  child: Icon(Icons.home),
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 100,
                // width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("Home"),
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 100,
                // width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text(""),
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 100,
                // width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("Home"),
                ),
              ),
            ),
            Tab(
              child: Container(
                height: 100,
                // width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("Home"),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF0B65E0),
        tooltip: 'Increment',
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.attach_money), Text("Pagar")],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
