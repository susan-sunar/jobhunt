import 'package:flutter/material.dart';
import 'package:jobhunt/data/detail.dart';
import 'package:jobhunt/model/model%20class.dart';
import 'package:jobhunt/pages/job%20detail.dart';
import 'package:jobhunt/pages/recdetail.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  String _selectedJobType = 'Featured Job';
  List<String> _jobTypes = ['Featured Job', 'Recomended Job'];
  List<FeaturedModel> _featuredJobs = allFeatured;
  List<RecomendedModel> _recomendedJobs = allRecomended;
  List<String> _searchResults = [];
  List<dynamic> _searchJobsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Job',
          style: TextStyle(fontSize: 22,),
        ),
        elevation: 4,
      ),
      body: Container(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3, // Take 3/4 of the available space
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 10),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for a job',
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        style: TextStyle(fontSize: 18),
                        onChanged: (text) {
                          setState(() {
                            _searchResults = _searchJobs(text);
                            _searchJobsList = _searchJobsListFunc(text);
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 1, // Take 1/4 of the available space
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      isExpanded: true, // Make the dropdown take the full width
                      value: _selectedJobType,
                      onChanged: (value) {
                        setState(() {
                          _selectedJobType = value!;
                          _searchResults = _searchJobs(_searchController.text);
                          _searchJobsList = _searchJobsListFunc(_searchController.text);
                        });
                      },
                      items: _jobTypes.map((jobType) {
                        return DropdownMenuItem(
                          child: Text(
                            jobType,
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          value: jobType,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: _searchResults.isEmpty
                  ? Center(
                child: Text(
                  'No results found',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              )
                  : ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _searchResults[index],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    trailing: ElevatedButton(
                      child: Text(
                        'Details',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (_selectedJobType == 'Featured Job') {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (builder) => Jobdetail(featuredModel: allFeatured[index]),
                            ),
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (builder) => detail(recomendedModel: allRecomended[index]),
                            ),
                          );
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _searchJobs(String query) {
    if (_selectedJobType == 'Featured Job') {
      return allFeatured
          .where((job) => job.jobTittle.toLowerCase().contains(query.toLowerCase()))
          .map((job) => job.jobTittle)
          .toList();
    } else {
      return allRecomended
          .where((job) => job.jobTitle.toLowerCase().contains(query.toLowerCase()))
          .map((job) => job.jobTitle)
          .toList();
    }
  }

  List<dynamic> _searchJobsListFunc(String query) {
    if (_selectedJobType == 'Featured Job') {
      return allFeatured
          .where((job) => job.jobTittle.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      return allRecomended
          .where((job) => job.jobTitle.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
}
