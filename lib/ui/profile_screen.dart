import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_diet_app/model/meal.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),

        child: BottomNavigationBar(
          iconSize: 30,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200087)
          ),
          unselectedIconTheme: IconThemeData(
              color: Colors.black12
          ),
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Icon(Icons.home),
                ),
                title: Text("Home",style:TextStyle(color: Colors.white),),),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Icon(Icons.search),
              ),
              title: Text("Search",style:TextStyle(color: Colors.white),),),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Icon(Icons.person),
              ),
              title: Text("Person",style:TextStyle(color: Colors.white),),),

          ],
        ),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              height: height * 0.37,
              left: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    bottom: const Radius.circular(40)
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                    top:40,
                    left:32,
                    right: 16,
                    bottom: 10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text("Date,Year",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        ),
                        subtitle: Text("Hello, Noor",style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Colors.black
                        ),
                        ),
                        trailing: ClipOval(child: Image.asset("assets/user.jpg")),
                      ),

                       _RadialProgress(
                        width:height * 0.2,
                        height: height* 0.2,
                      )

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height *0.38,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(

                  height: height * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 8.0,
                            left: 32,
                            right: 16,
                        ),
                        child: Text("MEALS FOR TODAY",style: const TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                         ),
                        ),
                      ),
                      Expanded(
                        child:SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 32,),
                              for(int i =0;i< meals.length;i++)_MealCard(meal: meals[i],)

                            ],
                          ),

                        )
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        child:Container(
                          margin: const EdgeInsets.only(bottom: 10,left: 32),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                           gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [
                               const Color(0xFF20008B),
                               const Color(0xFF200087)
                             ],
                           )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("YOUR NEXT WORKOUT",
                                style: TextStyle(color: Colors.white70),),
                                SizedBox(height: 5,),
                                Text("Upper Body",
                                style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                        color: const Color(0xFF5B4D9D)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset("assets/back.png",height: 50,width: 50,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0xFF5B4D9D)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset("assets/biceps.png",height: 50,width: 50,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0xFF5B4D9D)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset("assets/chest.png",height: 50,width: 50,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 10,),

                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(25)),
                                          color: const Color(0xFF5B4D9D)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset("assets/back.png",height: 50,width: 50,color: Colors.white,),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                  ],
                                )


                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//meal card design
class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20,bottom: 10),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        elevation: 4,

        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
               child: ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   child: Image.asset(meal.ImagePath,width: 150,fit: BoxFit.fill)) ,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Text(
                      meal.mealTime,
                      style:const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blueGrey
                      ),),
                    Text(meal.name,style:const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black
                    ),),
                    Text("${meal.kiloCaloriesBurnt} Kcal",
                      style:const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.blueGrey
                      ),),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time,color: Colors.black12,size: 15,),
                        SizedBox(height: 4,),
                        Text("${meal.timeTaken} min",
                          style:const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey
                          ),),
                      ],
                    ),
                    SizedBox(height: 16,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
class _RadialProgress extends StatelessWidget {
  final double height,width;

  const _RadialProgress({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:_RadialPainter(progress: 0.5),
      child: Container(
        height: height,
        width: width,

      )
    );
  }
}

class _RadialPainter  extends CustomPainter{
  final double progress;

  _RadialPainter({this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()
      ..strokeWidth=10
      ..color=Color(0xFF200087)
     // ..style=PaintingStyle.stroke
      ..strokeCap=StrokeCap.round;
    
    Offset center=Offset(size.width/2,size.height/2);
    //canvas.drawCircle(center, size.width/2, paint);
    canvas.drawArc(Rect.FromCircle( ), startAngle, sweepAngle, useCenter, paint)

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}


