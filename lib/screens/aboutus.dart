import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzCb4DonWw5pT1-A3Su9HzG6TTN4nMOmj7tg&usqp=CAU'),
              ),
              SizedBox(height: 16.0),
              Text('Omar Gomaa', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR09XH8sYj7lkhvl39yuadO_G3kB7vSEyNpuA&usqp=CAU'),
              ),
              SizedBox(height: 16.0),
              Text('Omar Sakr', style: TextStyle(fontSize: 24)),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
              ),
              SizedBox(height: 16.0),
              Text('Mohamed Safwat', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.pngitem.com/pimgs/m/22-223968_default-profile-picture-circle-hd-png-download.png'),
              ),
              SizedBox(height: 16.0),
              Text('Shehab Mohamed', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16.0),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?b=1&s=612x612&w=0&k=20&c=Dnxc_cOvh1zQjTE8Za9MMADydkRc8lSKzIEX6ej9H8g='),
              ),
              SizedBox(height: 16.0),
              Text('Karim Hamama', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}