import 'package:flutter/material.dart';
import 'package:untitled/model/car_list.dart';

class card extends StatelessWidget {
  const card({Key? key, required this.country}) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Card(
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
            "${country.name}(${country.capital})",
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
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
