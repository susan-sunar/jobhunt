import 'package:flutter/material.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/model/model%20class.dart';



class Jobdetail extends StatefulWidget {
  FeaturedModel featuredModel;

  Jobdetail({super.key, required this.featuredModel});

  @override
  State<Jobdetail> createState() => _JobdetailState();
}

final _formKey = GlobalKey<FormState>();

class _JobdetailState extends State<Jobdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Details"),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.visibility),
                      Text("${widget.featuredModel.Views}"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      Text("${widget.featuredModel.Salary}"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.timer_sharp),
                      Text("${widget.featuredModel.Posted}"),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.calendar_month),
                      Text("${widget.featuredModel.applidead}"),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 20,
                          backgroundImage:
                          AssetImage("${widget.featuredModel.imgurl}"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.featuredModel.companyName}",
                              style: myStyle(18),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Column(
                                  children: [
                                    Text("${widget.featuredModel.placeposting}",
                                        style: myStyle(16)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Job Title / Designation",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("${widget.featuredModel.jobTittle}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Job Description",
                      style: myStyle(16, Colors.black, FontWeight.bold),
                    ),
                    Text(
                      "${widget.featuredModel.jobdescribtion}",
                      style: myStyle(16),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Job Category",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.jobcategory}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Place of Posting",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.placeposting}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Minimum Qualification",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.jobcategory}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Field of Study",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.fieldstudy}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    // Text("Salary Type",style: myStyle(18,Colors.black,FontWeight.bold),),
                    // Text("${widget.featuredModel.Salarytype}",style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Salary Per Month",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.Salary}", style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Employment Type",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.employtype}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Experience",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.expericence}",
                        style: myStyle(16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Available Slots",
                      style: myStyle(18, Colors.black, FontWeight.bold),
                    ),
                    Text("${widget.featuredModel.Availableslot}",
                        style: myStyle(16)),

                    SizedBox(
                      height: 30,
                    ),

                    Text(
                      "Documents Required while applying",
                      style: myStyle(17, Colors.black, FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("1. Curriculum Vitate/Resume", style: myStyle(15)),
                    Text("2. CID", style: myStyle(17)),
                    Text("1. Work experience Certificate(id applicable)",
                        style: myStyle(15)),
                    SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Upload your CV',
                            style: myStyle(16, Colors.black, FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Upload the file',
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please upload your file';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _showSnackBar(context);
                              }
                            },
                            child: Text('Submit',
                                style:
                                myStyle(16, Colors.black, FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Form submitted successfully!'),
      duration: Duration(seconds: 2),
    ),
  );
}
