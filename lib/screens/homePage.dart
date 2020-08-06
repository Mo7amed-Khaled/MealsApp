import 'package:flutter/material.dart';
import 'package:pro_3/screens/pizza.dart';
import 'package:pro_3/screens/spaghetti.dart';
import 'cappuccino.dart';
import 'mo_mo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipes',
         style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, size: 28),
            onPressed: (){},
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      

      body: Container(
        color: Color(0xff263341),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: <Widget>[
            _myCard(image: 'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', title: 'Ma:Ma', toScreen: MoMo()),
            _myCard(image: 'https://images.unsplash.com/photo-1444418185997-1145401101e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1391&q=80', title: 'Cappuccino', toScreen: Cappuccino()),
            _myCard(image: 'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', title: 'Spaghetti', toScreen: Spaghetti()),
            _myCard(image: 'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', title: 'Pizza', toScreen: Pizza()),
          ],
        ),
      ),
    );
  }


  Widget _myCard({image, title, toScreen}){
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Color(0xff8DB464),
          child: Column(
            children: <Widget>[
              Expanded(
                child: FadeInImage.assetNetwork(image: image,
                  placeholder: 'images/loading.jpg',
                  fit: BoxFit.cover,
                  height: 160,
                ),
              ),
              Container(
                height: 32,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff263341),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> toScreen,
        ),);
      },
    );
  }

}

