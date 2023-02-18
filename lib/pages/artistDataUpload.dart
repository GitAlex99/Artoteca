import 'package:cherry_v_1_0_1/buttons/uploadDataArtist.dart';
import 'package:cherry_v_1_0_1/services/hiddenDrawerLog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../buttons/CreateAccountArtistButton.dart';



class ArtistDataUpload extends StatefulWidget {
  final String email;
  const ArtistDataUpload({Key? key, required this.email}) : super(key: key);

  @override
  State<ArtistDataUpload> createState() => _ArtistDataUploadState();
}

class _ArtistDataUploadState extends State<ArtistDataUpload> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController nickNameController = TextEditingController();


  @override
  void dispose(){
    dateController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    nickNameController.dispose();
    super.dispose();
  }

  Future addUsersDetails(String firstName,String lastname,String nick,String date) async{
    await FirebaseFirestore.instance.collection('Users').add({
      'First name': firstName,
      'Nickname': nick,
      'Surname': lastname,
      'DateOfBirth': date,
      'Email': widget.email

    }
    );
    }

    Future addDetails() async {
      addUsersDetails(firstNameController.text.trim(),lastNameController.text.trim() , nickNameController.text.trim(), dateController.text.trim());
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => HiddenDrawerLog()));
    }

  @override
  void initState(){
    super.initState();
    dateController.text="";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Container(
                        margin: EdgeInsets.only(left: 35),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/logo_artoteca.png",
                              height: 70,
                            ),
                            SizedBox(width: 5),
                            Text("Artoteca"),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Please complete the form below",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: firstNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'First name',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: lastNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Surname',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: nickNameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Nickname',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              controller: dateController,
                              decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_today),
                              labelText: "Date of birth",
                              ),
                              readOnly: true,
                              onTap: () async{
                                DateTime? pickedDate=await showDatePicker(context: context, initialDate: DateTime(2000), firstDate: DateTime(2000), lastDate: DateTime(2022));
                                if(pickedDate!=null){
                                  String formatedDate= DateFormat("yyyy-mm-dd").format(pickedDate);
                                  setState(() {
                                    dateController.text=formatedDate.toString();
                                  });
                                }
                                else{
                                  print("Not selected date");
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: CompleteRegistrationArtist(
                          onTap: addDetails
                        ),
                      ),
                    ]
                )
            )
        ),
      );
  }
}
