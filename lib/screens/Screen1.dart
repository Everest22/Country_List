import 'package:flutter/material.dart';
import 'package:untitled/components/card.dart';
import 'package:untitled/model/car_list.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key, required this.country}) : super(key: key);
  final Country country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network("${country.flag_image}"),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${country.name}(${country.capital})(${country.population})",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${country.description}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
