import 'package:flutter/material.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/model/model%20class.dart';



class detail extends StatefulWidget {
  RecomendedModel recomendedModel;

  detail({super.key, required this.recomendedModel});

  @override
  State<detail> createState() => _JobdetailState();
}

final _formKey = GlobalKey<FormState>();

class _JobdetailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Job Details"),
          elevation: 4,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 20,
                    backgroundImage:
                    AssetImage("${widget.recomendedModel.imgUrl}"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.recomendedModel.company}"),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Column(
                            children: [
                              Text("${widget.recomendedModel.location}"),
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
                style: myStyle(16, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text("${widget.recomendedModel.jobTitle}"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Job Description",
                style: myStyle(16, Colors.black, FontWeight.bold),
              ),
              Text(
                "${widget.recomendedModel.description}",
                style: myStyle(14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Field Study",
                style: myStyle(14, Colors.black, FontWeight.bold),
              ),
              Text("${widget.recomendedModel.fieldstudy}"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Employment Type",
                style: myStyle(14, Colors.black, FontWeight.bold),
              ),
              Text("${widget.recomendedModel.employtype}"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Experience",
                style: myStyle(14, Colors.black, FontWeight.bold),
              ),
              Text("${widget.recomendedModel.experience}"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Salary",
                style: myStyle(14, Colors.black, FontWeight.bold),
              ),
              Text("${widget.recomendedModel.salary}"),
              SizedBox(
                height: 10,
              ),
              Text(
                "Place of Posting",
                style: myStyle(14, Colors.black, FontWeight.bold),
              ),
              Text("${widget.recomendedModel.location}"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Documents Required while applying",
                style: myStyle(16, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text("1. Curriculum Vitate/Resume"),
              Text("2. CID"),
              Text("1. Work experience Certificate(id applicable)"),
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
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
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
