import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final String name;
  AppBarWidget({required this.name})
      : super(
          preferredSize: Size.fromHeight(120),
          child: Material(
            elevation: 5.0,
            child: Container(
              height: 120,
              color: Colors.lightBlue,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 15.0,
                  left: 15.0,
                  top: 25.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bem Vinda, ",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/mobile.png'),
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
}
