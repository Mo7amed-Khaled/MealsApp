import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class MoMo extends StatefulWidget {
  @override
  _MoMoState createState() => _MoMoState();
}

class _MoMoState extends State<MoMo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 240.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Mo:Mo'),
              background: FadeInImage.assetNetwork(
                image: 'https://images.unsplash.com/photo-1496116218417-1a781b1c416c?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
                placeholder: 'images/loading.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 600.0,
            delegate: SliverChildListDelegate([
              Container(
                color: Color(0xff263341),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Nutrition', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SleekCircularSlider(
                            initialValue: 90,
                            max: 100,
                            appearance: CircularSliderAppearance(
                              angleRange: 270,
                              startAngle: 270,
                              size: MediaQuery.of(context).size.width*0.2,
                              customWidths: CustomSliderWidths(
                                progressBarWidth: 6,
                              ),
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xff8DB464),
                                trackColor: Color(0xff263341),
                                dotColor: Color(0xff8DB464),
                              ),
                            ),
                            onChange: (v){},
                            innerWidget: (v){
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Calories', style: TextStyle(color: Colors.white),),
                                    Text('100', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              );
                            },
                          ),

                          SleekCircularSlider(
                            initialValue: 90,
                            max: 100,
                            appearance: CircularSliderAppearance(
                              angleRange: 270,
                              startAngle: 270,
                              size: MediaQuery.of(context).size.width*0.2,
                              customWidths: CustomSliderWidths(
                                progressBarWidth: 6,
                              ),
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xff8DB464),
                                trackColor: Color(0xff263341),
                                dotColor: Color(0xff8DB464),
                              ),
                            ),
                            onChange: (v){},
                            innerWidget: (v){
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Protein', style: TextStyle(color: Colors.white),),
                                    Text('10gm', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              );
                            },
                          ),

                          SleekCircularSlider(
                            initialValue: 90,
                            max: 100,
                            appearance: CircularSliderAppearance(
                              angleRange: 270,
                              startAngle: 270,
                              size: MediaQuery.of(context).size.width*0.2,
                              customWidths: CustomSliderWidths(
                                progressBarWidth: 6,
                              ),
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xff8DB464),
                                trackColor: Color(0xff263341),
                                dotColor: Color(0xff8DB464),
                              ),
                            ),
                            onChange: (v){},
                            innerWidget: (v){
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Carb', style: TextStyle(color: Colors.white),),
                                    Text('50gm', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              );
                            },
                          ),

                          SleekCircularSlider(
                            initialValue: 90,
                            max: 100,
                            appearance: CircularSliderAppearance(
                              angleRange: 270,
                              startAngle: 270,
                              size: MediaQuery.of(context).size.width*0.2,
                              customWidths: CustomSliderWidths(
                                progressBarWidth: 6,
                              ),
                              customColors: CustomSliderColors(
                                progressBarColor: Color(0xff8DB464),
                                trackColor: Color(0xff263341),
                                dotColor: Color(0xff8DB464),
                              ),
                            ),
                            onChange: (v){},
                            innerWidget: (v){
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Fat', style: TextStyle(color: Colors.white),),
                                    Text('10gm', style: TextStyle(color: Colors.white),),
                                  ],
                                ),
                              );
                            },
                          ),

                          
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Ingredients', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(left: 15),
                          height: 30,
                          width: 230,
                          decoration: BoxDecoration(
                            color: Color(0xff8DB464),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child: Text('2 shots espresso (a double shot)',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.only(left: 15),
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Color(0xff8DB464),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Center(
                            child: Text('4 ounces milk',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, top: 25),
                      child: Text('Steps', 
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(left: 15, bottom: 15),
                          decoration: BoxDecoration(
                            color: Color(0xff8DB464),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Center(child: Text('1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 15),
                          child: Text('Gather the ingredients.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(left: 15, bottom: 15),
                            decoration: BoxDecoration(
                              color: Color(0xff8DB464),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(child: Text('2',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),

                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 15, right: 15),
                            child: Text('Pull a double shot of espresso into a cappuccino cup.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(left: 15, bottom: 15),
                            decoration: BoxDecoration(
                              color: Color(0xff8DB464),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(child: Text('3',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),

                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 15, right: 15),
                            child: Text('Foam the milk to double its original volume. Top the espresso with foamed milk right after foaming. When initially poured, cappuccinos are only espresso and foam, but the liquid milk quickly settles out of the foam, to create the (roughly) equal parts foam, steamed milk, and espresso for which cappuccino is known.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(left: 15, bottom: 15),
                            decoration: BoxDecoration(
                              color: Color(0xff8DB464),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Center(child: Text('4',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ),

                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 15, right: 15),
                            child: Text('Serve immediately.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ]), 
          ),
        ],
      ),
    );
  }
}