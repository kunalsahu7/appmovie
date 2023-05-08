import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controler/moviecontrolerpage.dart';
import '../modal/Modalpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtname = TextEditingController();
  Homecontroler homecontroler = Get.put(Homecontroler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: txtname,
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  homecontroler.Name.value = txtname.text;
                },
                child: Text("Submit"),
              ),
              Obx(
                    () => FutureBuilder(
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    } else if (snapshot.hasData) {

                      HomeModel? m1 = snapshot.data;
                      return Column(
                        children: [
                          Container(
                            height: 800,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                        ],
                      );
                    }
                    return CircularProgressIndicator();
                  },
                  future: homecontroler.apicall(homecontroler.Name.value),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
