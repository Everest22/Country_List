import 'package:flutter/material.dart';
import 'package:untitled/model/car_list.dart';
import 'package:untitled/screens/Screen1.dart';
import 'package:untitled/service/get_api_service.dart';

import '../components/card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Country List'),
      ),
      body: FutureBuilder(
        future: apiService.getCountry(),
        builder: (BuildContext context, AsyncSnapshot<List<Country>> snapshot){

          if(snapshot.hasData){
            return ListView.builder(
              itemCount: 8,
                itemBuilder: (BuildContext context, index){
                  return GestureDetector(
                    onTap: () {
                      Navigator.push((context), MaterialPageRoute(builder: (context) => Screen1(country: snapshot.data![index])));
                    },
                    child: card(
                        country: snapshot.data![index]
                    ),
                  );
                }
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
