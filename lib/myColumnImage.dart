import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
export 'main.dart';

/*
This time I'm using a function which returns a widget instead of using a
stateless widget .
*/

Widget itemCard(String label, String imageAd, bool isFav) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: Container(
          height: 150,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(imageAd),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      //border: Border.all(color: Colors.black),
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'FinnNavin',
                              style: TextStyle(
                                fontSize: 20,
                                //fontWeight: FontWeight.bold,
                                fontFamily: 'QuicksandMedium',
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              elevation: isFav ? 1.0 : 0.0,
                              child: Container(
                                child: isFav
                                    ? Icon(
                                        Icons.favorite_outlined,
                                        color: Colors.red,
                                      )
                                    : Icon(Icons.favorite_border_outlined),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ]),
                      Text(
                        'Scandinavian Full Sized Sofa , imported ,full leather , only for cool people',
                        style: TextStyle(
                          fontFamily: 'QuickSandMedium',
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[400],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.add_shopping_cart_outlined,
                            color: Colors.amberAccent.shade700,
                          ),
                          Container(
                            height: 40,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Center(child: Text('add to cart')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
