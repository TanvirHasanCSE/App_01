import 'package:flutter/material.dart';
import 'login_page_screen.dart';
class PrograssTaskScreen extends StatelessWidget {
  final String title;

  const PrograssTaskScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         SizedBox(
           height: 120,
           child: ListView.separated(
               primary: false,
               scrollDirection: Axis.horizontal,
               itemBuilder: (index, context){
             return TaskCountByStatusCard(count: 09,title: "New",);
           }, separatorBuilder: (context, index) {
             return Card();
           }, itemCount: 4 ),
         ),
         SizedBox(

         )
       ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
    );
  }



}

class TaskCountByStatusCard extends StatelessWidget {
  const TaskCountByStatusCard({
    super.key, required this.title, required this.count,
  });

  final String title;
  final int count;


  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
    child: Column(
      children: [
        Text('09',style: Theme.of(context).textTheme.titleLarge,),
        Text('New',style: Theme.of(context).textTheme.bodySmall,)
      ],
    ),
        ),
        );
  }
}

