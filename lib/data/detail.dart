

import 'package:jobhunt/model/model%20class.dart';

List<FeaturedModel> allFeatured = [
  FeaturedModel(
    imgurl: "assets/image/logo1.png",
    Views: "432",
    verified: "Yes",
    Salarytype:"Negotiable" ,
    Salary: "BTN 30000",
    Posted: "2 days ago",
    applidead: "2024-08-25",
    jobTittle: "Developer",
    jobdescribtion: "Fronted Engineer(2 number)-HTML,css and knowledge of javascript with any Libraries or framework.BackEnd Engineer(2 numbers)-knowledge on java,python and Database.DevOps Engineer(1 numbers)-Good knowledge of Linux,Any DevOps tools and technologies with networking skills.",
    jobcategory: "Information Technology(IT)",
    placeposting: "Thimphu",
    qualification: "Bachelors Degree",
    fieldstudy: "BSc Computer Science,BIT,BE IT,",
    employtype: "permenent",
    companyName: "Tashi Company",
    expericence: "5 years",
    Availableslot: 3,
  ),
  FeaturedModel(
    imgurl: "assets/image/slider1.jpg",
    Views: "322",
    verified: "Yes",
    Salarytype:"Negotiable" ,
    Salary: "BTN 25000",
    Posted: "8 days ago",
    applidead: "2024-08-18",
    jobTittle: "HR Manager",
    jobdescribtion: "managing activities such as job design,recruitment,employee relations, performance management,training & development and talent management.",
    jobcategory: "HR Management",
    placeposting: "Thimphu",
    qualification: "Bachelors",
    fieldstudy: "bachelor degree",
    companyName: "Le Meridain",
    employtype: "Contract",
    expericence: "2-3 years",
    Availableslot: 1,
  ),
  FeaturedModel(
    imgurl: "assets/image/slider2.jpg",
    Views: "765",
    verified: "Yes",
    Salarytype:"Negotiable" ,
    Salary: "BTN 18000",
    Posted: "10 days ago",
    applidead: "2024-08-10",
    jobTittle: "Cafe Manager",
    jobdescribtion: "managing activities such as job design,recruitment,employee relations, performance management,training & development and talent management.",
    jobcategory: "strong leadership skills and ",
    placeposting: "Thimphu,",
    qualification: "Bachelors Degree",
    companyName: "Ambient Cafe",
    fieldstudy: "",
    employtype: "permenent",
    expericence: "1 years",
    Availableslot: 2,
  ),
  FeaturedModel(
    imgurl: "assets/image/slider4.jpg",
    Views: "432",
    verified: "Yes",
    Salarytype:"Negotiable" ,
    Salary: "BTN 20000",
    Posted: "5 days ago",
    applidead: "2024-07-23",
    jobTittle: "Mechanical",
    jobdescribtion: "BE in Mechanical engineering with 7_9 years experience and can maintence and repair of mechanical systems and equipment in industrial and commercial facilities..",
    jobcategory: "Informa ",
    placeposting: "Thimphu,Thimphu",
    qualification: "Bachelors Degree",
    fieldstudy: "automated manufacturing, development of tools,optimizing",
    employtype: "permenent",
    companyName: "TT Automobiles",
    expericence: "2 years",
    Availableslot: 1,
  ),
  FeaturedModel(
    imgurl: "assets/image/slider6.jpg",
    Views: "123",
    verified: "Yes",
    Salarytype:"Negotiable" ,
    Salary: "BTN 18000",
    Posted: "15 days ago",
    applidead: "2024-08-05",
    jobTittle: "Teacher",
    jobdescribtion: "Looking for tutor for chemistry who have done BEd. for class twelve",
    jobcategory: "Information Technology(IT)",
    placeposting: "changangkha",
    qualification: "Bachelors Degree ",
    fieldstudy: "minimum of bechelor degree, along with cerification from state",
    employtype: "Contract",
    companyName: "Karma Academy",
    expericence: "3 years",
    Availableslot: 1,
  ),
];


List<RecomendedModel> allRecomended = [
  RecomendedModel(
      imgUrl: "assets/image/acc.jpg",
      jobTitle: "Accountant Assistant",
      description: "primary responsibilies will include managing financial records,processing invoices,reconciling bank statement and ensuring complaince with financial regulations.",
      salary: "BTN 20,000",
      location: "Mongar",
      fieldstudy: " business administration, accounting,finance",
      employtype: "Permanent",
      experience: "1year",
      company: "BOBL"
  ),

  RecomendedModel(
      imgUrl: "assets/image/chef.jpg",
      jobTitle: "Bakery/Chef",
      description:  "Manage the production of pastries and bread",
      salary: "BTN 20,000",
      location: "Paro",
      experience: "2years",
      fieldstudy: "Culinary arts",
      employtype: "Regular",
      company: "Pemako Hotel"
  ),
  RecomendedModel(
      imgUrl: "assets/image/frontof.jpg",
      jobTitle: "Front office manager",
      description: "managing activities such as job design,recruitment,employee relations, performance management,training & development and talent management.",
      salary: "BTN 20,000",
      location: "Thimphu",
      fieldstudy: "Hotel Management",
      employtype: "regular",
      experience: "Freshers can apply",
      company: "Hotel Taj"
  ),
  RecomendedModel(
      imgUrl: "assets/image/itacc.jpg",
      jobTitle: "IT Associate",
      description: "Frontend Engineer (2 numbers) - HTML, CSS and knowledge of Javascript with any Libraries OR framework.",
      salary: "BTN 20,000",
      location: "Paro",
      experience: "1year",
      fieldstudy: "Automated Manufacturing",
      employtype: "Permanent",
      company: "Druk Enterprise"
  ),
  RecomendedModel(
      imgUrl: "assets/image/ittech.jpg",
      jobTitle: "IT Technician",
      description: "BE in Mechanical engineering with 7_9 years experience and can maintence and repair of mechanical systems and equipment in industrial and commercial facilities..",
      salary: "BTN 20,000",
      location: "Paro",
      experience: "2years",
      fieldstudy: "It Background",
      employtype: "Regular",
      company: "Automobiles"
  ),
  RecomendedModel(
      imgUrl: "assets/image/lopon.jpg",
      jobTitle: "Teacher",
      description: "Looking for tutor for chemistry who have done BEd. for class twelve",
      salary: "BTN 20,000",
      experience: "not required",
      fieldstudy: "BEd. science",
      employtype: "Contract",
      location: "Paro",
      company: "Karma Academy"
  ),

];

List<Recommended> savedItems = [];


List<Notification> allNotifications = [
  Notification(
    title: 'New Job Opening',
    message: 'Check out the latest job opening for a Software Engineer at Google',
    timestamp: '1 hour ago',
  ),
  Notification(
    title: 'Application Status Update',
    message: 'Your application for the Data Scientist position at Microsoft has been shortlisted',
    timestamp: '2 hours ago',
  ),
  Notification(
    title: 'New Job Matching',
    message: 'We found a new job matching your skills and interests. Check it out!',
    timestamp: '3 hours ago',
  ),
];


