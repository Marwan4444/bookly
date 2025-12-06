import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:50),
        child: Row(
          children: [
            Image.asset(Assets.logo, height: 30,),
            const Spacer(),
            IconButton(onPressed: (){
              GoRouter.of(context).push('/searchview');
            }, icon: const Icon(Icons.search,size: 32,)),
          ],
        ),
      );
   
  }      
}