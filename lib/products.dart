import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  Response? response;
  @override
  void initState() {
    getValueFromApi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // ElevatedButton(
          //     onPressed: () {
          //       getValueFromApi();
          //     },
          //     child: Text("Get value")),
              response!=null? Expanded(
                child: ListView.builder(
                  itemCount: response?.data.length,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("id:${response!.data[index]['id']}"),
                            Text("Title:${response!.data[index]['title']}"),
                            Text("Description:${response!.data[index]['description']}"),
                            Text("Category:${response!.data[index]['category']}"),
                            Image.network(response!.data[index]['image'])
                          ],
                        ),
                      ),
                    );
                  }),
              ):CircularProgressIndicator()
        ],
      ),
    );
  }

  getValueFromApi() async {
    try {
      Dio dio = Dio();
      response = await dio.get("https://fakestoreapi.com/products");
      print(response);
      setState(() {
        response;
      });
    } catch (e) {
      print(e);
    }
  }
}
