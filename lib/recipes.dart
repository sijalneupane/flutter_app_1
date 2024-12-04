import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  Response? response;
  @override
  void initState() {
    getValueFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WElCOME TO RECIPIES WORLD"),
        ),
        body: Column(children: [
          response != null
              ? Expanded(
                  child: ListView.builder(
                      itemCount: response!.data.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Text(
                                "Id: ${response!.data[index]['id']}")
                          ],
                        );
                      }),
                )
              : CircularProgressIndicator()
        ]));
  }

  getValueFromApi() async {
    try {
      Dio dio = Dio();
      response = await dio.get("https://dummyjson.com/recipes");
      print(response!.data);
      setState(() {
        response;
      });
    } catch (e) {
      print(e);
    }
  }
}
