import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  int _value = 12;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "BMICALCULATOR",

        ),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child:
              buildContainer("Male",Icons.male)),
              Expanded(child:
              buildContainer("Female",Icons.female)),
            ],
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0)

              ),
              child: Column(
                children: [
                  Text("HEIGHT",style: TextStyle(color: Colors.white,fontSize: 30,),),
                  Text("120 CM",style: TextStyle(fontSize: 33,color: Colors.white),),
              new Expanded(
                child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    divisions: 10,
                    activeColor: Colors.redAccent,
                    inactiveColor: Colors.white,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    }
                ),



              ),],
              ),

            ) ),
          ),
          Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(child:Container(

                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight",style: TextStyle(fontSize: 30,color: Colors.white)),
                      Text("60",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.white),),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            child: Icon(Icons.add),backgroundColor: Colors.black45,
                              onPressed: (){
                              setState(() {

                              });


                          }),
                          FloatingActionButton(
                            child: Icon(Icons.remove),backgroundColor: Colors.black45,
                              onPressed: (){
                              setState(() {

                              });

                          }),
                        ],
                      )

                    ],
                  ),

                ) ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(child:Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age",style: TextStyle(fontSize: 30,color: Colors.white),),
                      Text("28",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.white),),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            child: Icon(Icons.add),backgroundColor: Colors.black45,
                              onPressed: (){
                              setState(() {

                              });

                          }),
                          FloatingActionButton(
                            child: Icon(Icons.remove),backgroundColor: Colors.black45,

                              onPressed: (){
                              setState(() {

                              });

                          }),
                        ],
                      )

                    ],
                  ),

                ) ),
              ),
            ],
          )),

        ],
      ),
    );
  }

  Padding buildContainer(String text,IconData iconData) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0)
        ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(iconData,size: 50,color: Colors.white),
                    Text(text,style: TextStyle(fontSize: 30,color: Colors.white),),
                  ],
                ),

              ),
    );
  }
}
