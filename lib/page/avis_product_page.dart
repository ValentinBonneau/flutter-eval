import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_sales/model/product_model.dart';

import '../model/avis_model.dart';

class AvisProductPage extends StatelessWidget {
  late List<Avis> lsAvis;
  AvisProductPage(Product product,{Key? key}) : super(key: key){
    lsAvis = product.avis;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avis'),
      ),
      body: ListView.builder(
          itemCount: lsAvis.length,
          itemBuilder: (context, index) {
            final Avis avis = lsAvis[index];
            return ListTile(
              title: Row(children: [
                Text(
                  avis.username,
                )
              ]),
              leading: Image.network(avis.userpp,),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (starindex) {
                      return Icon(
                        starindex < avis.note ? Icons.star :  Icons.star_border ,
                        color: starindex < avis.note ? Colors.yellow : null,
                      );
                    }),
                  ),
                  Text(avis.avis)
                ],
              ),
            );
          }),
    );
  }
}
