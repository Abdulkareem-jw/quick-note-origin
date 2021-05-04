import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  bool passwordhideen=true;
  var iconvisibel=Icons.visibility_off;
  bool visibility_password=false;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 50,height: 200,),
                 Image.asset('images/logo_app.png',height:100,width:100,),
               Text(' Q',style: TextStyle(fontSize: 25,color: Colors.grey),),
                Text('uick',style: TextStyle(fontSize: 25,),),
                Text(' N',style: TextStyle(fontSize: 25,color: Colors.grey),),
                Text('ote',style: TextStyle(fontSize: 25,),),
                
              ],
              ), //First Row

              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  TextField(decoration: InputDecoration(
                    hintText: 'Username',
                     prefix: Icon(Icons.email),
                  ),),
                  SizedBox(height: 7,),

                  TextField(obscureText: passwordhideen,
                  decoration: InputDecoration(
                    
                    hintText: 'Password',
                    prefix: Icon(Icons.security),
                    suffixIcon: InkWell(
                      onTap: _togglePasswordView,
                      child: Icon(iconvisibel),
                    ),
                  ),
                  ),

                 FlatButton(
                   color: Theme.of(context).primaryColor,
                   onPressed: (){},

                    child: Center(child: Text('Login',style: TextStyle(color:Colors.white),)),
                    ),
                ],
                ),
              ), //second Row
      Expanded(child: SizedBox(height: 100,)),
             Expanded(
                            child: Center(
                    child: RichText(
                    text:TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account?',
                          style: TextStyle(color:Colors.black)
                        ),
                        TextSpan(
                          text: ' Create account',
                          style: TextStyle(color:Colors.orange,decoration: TextDecoration.underline),
                          
                          recognizer: TapGestureRecognizer()..onTap =()async{
                            var url="https://www.youtube.com/";
                            if (await canLaunch(url)){
                              await launch(url);
                            }
                            else{
                              throw 'Can\'t load Url';
                            }
                          }
                        ),
                        TextSpan(
                          text: '\n                   \n                    Or continue using ',
                          style: TextStyle(color:Colors.black)
                        ),
                      ]
                    ),
                    
                     ),
                    ),
             ),
              
             
                
               

                   Expanded(
                                        child: Row(
                      children: <Widget>[
                        SizedBox(width: 50,),
                        FlatButton(onPressed: ()=>{}, child:Image.asset('images/facebook_logo2.jpg',width: 50,height:50)),
                        FlatButton(onPressed: ()=>{}, child:Image.asset('images/twitter_logo.jpg',width: 50,height:50)),
                        FlatButton(onPressed: ()=>{}, child:Image.asset('images/gmail_logo.jpg',width: 60,height:60)),

                      ],),
                   ),
               
                
               
                

          ],), 
      ),
    );
    
  }


 void _togglePasswordView(){

   setState(() {
   passwordhideen=!passwordhideen;
   visibility_password=!visibility_password;
   if(visibility_password)
   iconvisibel=Icons.visibility;
   else
     iconvisibel=Icons.visibility_off;
   });
 }
}

