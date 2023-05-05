import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {


  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  String groupVal = "male";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to Health App, Please enter these details",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: TextStyle(
                            color: Colors.black
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2
                            )
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Age",
                        labelStyle: TextStyle(
                            color: Colors.black
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.purple,
                                width: 2
                            )
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: "male",
                              groupValue: groupVal,
                              onChanged: (value){
                                setState(() {
                                  groupVal = value??"male";
                                });
                              }
                          ),
                          SizedBox(width: 5,),
                          Text("Male")
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "female",
                              groupValue: groupVal,
                              onChanged: (value){
                                setState(() {
                                  groupVal = value??"male";
                                });
                              }
                          ),
                          SizedBox(width: 5,),
                          Text("Female")
                        ],
                      ),
                      ElevatedButton(
                          onPressed: (){},
                          child: Text(
                            "submit"
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
