import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'sign_up.dart';


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
  bool visibility_password=true;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
       resizeToAvoidBottomPadding: false,
       
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

                RaisedButton(
                   color: Theme.of(context).primaryColor,
                   onPressed: (){},
                   
                    child: Center(child: Text('Login',style: TextStyle(color:Colors.white),)),
                    ),
                    
                ],
                ),
              ), //second Row
      SizedBox(height: 100,),
            Center(
                    child: Column(
                      children: <Widget>[
                     SizedBox(height: 10,),
                       
                        Row(
                      children: <Widget>[
                            SizedBox(width: 50,),
                            Text("Don't have an account?"),
                            Builder(builder: (context)=>
                              Center(
                                child: FlatButton(
                                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up())), 
                                child:Text('Create account',style:TextStyle(decoration: TextDecoration.underline,color: Colors.orange),
                              ),
                              ),
                            ),
                            ),
                      ],
                    ),
                           
                    Row(
                        children: <Widget>[
                             SizedBox(width:135,),
                           Text('Or continue using'),

                        ],),
                        
                    
                    SizedBox(height: 40,),

                      ],)
                   
                    
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

