
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_and_drawer/provider/stepper_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StepperProvider? providerFalse;
  StepperProvider? providerTrue;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<StepperProvider>(context, listen: false);
    providerTrue = Provider.of<StepperProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Stepper",
              style: TextStyle(color: Colors.white, letterSpacing: 1),
            ),
            actions: [
              Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(width: 10)
            ],

          ),
          drawer: Drawer(
            child: Column(
              children: [
                SizedBox(height: 20),
                // CircleAvatar(backgroundImage: AssetImage("assets/images/user.png",),radius: 70),
                FlutterLogo(size: 100),
                SizedBox(height: 10),
                Divider(thickness: 0.2,color: Colors.black,),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.favorite,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Interest",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.video_settings,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("My Courses",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.label_important_outline_sharp,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Todo / Done",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.download,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Ofline Articles",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Rate us",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.support_agent_outlined,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Suport",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.settings,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Setting",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app,color: Colors.black,size: 25,),
                      SizedBox(width: 15),
                      Text("Log Out",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.black),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple.shade50,
                      Colors.blue.shade50,
                      Colors.white
                    ])),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stepper(
                    onStepContinue: () {
                      providerFalse!.add();
                    },
                    onStepCancel: () {
                      providerFalse!.minus();
                    },
                    currentStep: providerTrue!.stepindex,
                    steps: [
                      Step(
                          title: Text(
                            "Basic Details",
                            style: TextStyle(color: Colors.black, letterSpacing: 1),
                          ),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(hintText: "Name"),
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: "Address"),
                              ),
                              TextField(
                                decoration: InputDecoration(hintText: "City"),
                              ),
                              TextField(
                                decoration:
                                InputDecoration(hintText: "Phone Number"),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Education Details",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1)),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "College Name"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Couse Name"
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Bank Details",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1)),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Name as Per Pancard"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Account Number"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "IFSC Code"
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Compnay Details",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1)),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Compnay Name"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Role in Company"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Address"
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Subscription Details",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1)),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Subcription Name"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Amount"
                                ),
                              ),
                            ],
                          )),
                      Step(
                          title: Text("Payment Details",
                              style:
                              TextStyle(color: Colors.black, letterSpacing: 1)),
                          content: Column(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Name as par Card"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Card Number"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "Exp Year"
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    hintText: "CVV"
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
