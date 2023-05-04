import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
   final String? Function(String?) valid;
   final bool ?obscureText;
    final  void Function()? onTapIcon;
  
  const CustomTextFormAuth({super.key,
   required this.hinttext,
    required this.labeltext,
     required this.iconData,
      required this.mycontroller,
       required this.valid,
        this.obscureText,
         this.onTapIcon, 
       });
       
       
       

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    
    return  Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
            
           controller: mycontroller,
           obscureText:
           obscureText==null || obscureText == false ? false:true ,
           validator:valid,
                decoration:  InputDecoration(
                  hintText:hinttext ,
                  hintStyle:const TextStyle(fontSize: 14) ,
                  floatingLabelBehavior:FloatingLabelBehavior.always  ,
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal:30),
                  label:Text(labeltext 
                  ,style:const TextStyle(
                    fontSize:20, 
                  ) ,),
                  suffixIcon:InkWell(
                    child:Icon(iconData,
                  color:Colors.orange[900]) ,
                  onTap: onTapIcon,
                  ) ,
                  border: const OutlineInputBorder(
                   borderRadius:BorderRadius.all(Radius.circular(30)) 
                  )
    
                ),
              ),
    );
            
  }
}