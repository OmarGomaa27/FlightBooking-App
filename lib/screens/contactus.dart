import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              'Get in touch with us',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Image.asset('assets/images/company_logo.png'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Phone: 123-456-7890',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Email: info@company.com',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
