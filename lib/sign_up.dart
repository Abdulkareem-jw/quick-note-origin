import 'package:flutter/material.dart';
import 'main.dart';

class Sign_up extends StatefulWidget {
  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  bool signup_passwordhideen=true;
  var signup_iconvisibel=Icons.visibility_off;
  bool signup_visibility_password=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()))
          
        ),
        title:Text('Sign Up'),
        backgroundColor: Colors.black,
      ),
      body: 
          
       Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
          
                SizedBox(height:40),
               
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Image.asset('images/avatar_icon.png',width:130,height:130,),
                   
               ],
                             
               ),

                SizedBox(height: 30),
                Column(
                      
                     
                  children: <Widget>[

                    Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                          child: TextField(
                            keyboardType: TextInputType.text,
                          decoration: InputDecoration(prefixIcon: Icon(Icons.person),hintText: 'Full Name' ),
                          ),

                       ),
                  
                        
                    
                    Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                          child: TextField(
                            
                          decoration: InputDecoration(prefixIcon: Icon(Icons.email),hintText: 'E-mail' ),
                          ),

                       ),
                   


                   Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                            child: TextField(
                          
                            decoration: InputDecoration(prefixIcon: Icon(Icons.person),hintText: '@Username' ),
                            ),

                         ),
                 
                   


                    Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                            child: TextField(
                              obscureText: signup_passwordhideen,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.security),
                              hintText: 'Password',
                            suffixIcon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(signup_iconvisibel),
                      ),
                             ),
                            ),
                            
                         ),                       
                   
                  
                 RaisedButton(
                      onPressed: ()=>{},
                    child: Text('Sign Up',style: TextStyle(color:Colors.white)),
                    color: Colors.blue,
                    disabledColor: Colors.grey,
                 
                    ),
                                   
                 ]            
                 ),
              
               
                
                
              

          

        ],
        ),
        
         
      
      ),
      
    );
  }
 void _togglePasswordView(){

   setState(() {
   signup_passwordhideen=!signup_passwordhideen;
   signup_visibility_password=!signup_visibility_password;
   if(signup_visibility_password)
   signup_iconvisibel=Icons.visibility;
   else
     signup_iconvisibel=Icons.visibility_off;
   });
 }

}