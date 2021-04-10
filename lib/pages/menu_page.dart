import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:waiterless_cafe_app/components/rounded_input_field.dart';


class MenuPage extends StatefulWidget {
  MenuPage();
  @override
  _MenuPage createState() => _MenuPage();
}
class _MenuPage extends State<MenuPage>{
  @override
  Widget build (BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)
          )
        ),
        title: Text(
            "Меню",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
          ),

        ),
        elevation: 2,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
              onPressed: () => {

              },
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 28, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 320,
                        child: RoundedInputField(
                          hintText: "Поиск...",
                        ),
                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Icon(Icons.search),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: EdgeInsets.all(0.0),
              child: Container(
                height: 20,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    menuSection(text: "Суши"),
                    menuSection(text: "Пиццы"),
                    menuSection(text: "Салаты"),
                    menuSection(text: "Напитки"),
                    menuSection(text: "Десерты"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 42.0),
            Container(
              height: height,
              width: width,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        dishRow(name: "Пицца Пепперони", price: "450 ₽", picture: "https://cutt.ly/Kc2YSxs"),
                        SizedBox(width: 10),
                        dishRow(name: "Пицца Маргарита", price: "250 ₽", picture: "https://cutt.ly/Lc2Uqaw"),
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        dishRow(name: "Пицца Пепперони", price: "450 ₽", picture: "https://cutt.ly/Kc2YSxs"),
                        SizedBox(width: 10),
                        dishRow(name: "Пицца Маргарита", price: "250 ₽", picture: "https://cutt.ly/Lc2Uqaw"),
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        dishRow(name: "Пицца Пепперони", price: "450 ₽", picture: "https://cutt.ly/Kc2YSxs"),
                        SizedBox(width: 10),
                        dishRow(name: "Пицца Маргарита", price: "250 ₽", picture: "https://cutt.ly/Lc2Uqaw"),
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        dishRow(name: "Пицца Пепперони", price: "450 ₽", picture: "https://cutt.ly/Kc2YSxs"),
                        SizedBox(width: 10),
                        dishRow(name: "Пицца Маргарита", price: "250 ₽", picture: "https://cutt.ly/Lc2Uqaw"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget menuSection({
    @required String text}){
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 0),
      child: Container(
        height: 20,
        width: width/4,
        decoration: BoxDecoration(
            color: Colors.transparent
        ),
        child: FlatButton(
          child: Text(
              text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            )
          ),
          onPressed: (){
            },
        ),
      ),
    );
  }


  Widget dishRow({
  @required String name,
  @required String price,
  @required String picture})
  {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Container(
        width: width/2.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120.0,
              width: width/3.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(picture),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 32.0,
                  width: 32.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey
                  ),
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        )
                    ),
                    onPressed: (){
                    },
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  height: 32.0,
                  width: 32.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey
                  ),
                  alignment: Alignment.centerLeft,
                  child: FlatButton(
                    child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        )
                    ),
                    onPressed: (){
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
