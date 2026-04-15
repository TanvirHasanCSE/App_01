import 'package:flutter/material.dart';

class TMappBar extends StatelessWidget implements PreferredSizeWidget{
  const TMappBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(
            child: Icon(Icons.account_circle),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Full Name",style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white
              )),
              Text("Eail@gmail.com",style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white
              ))
            ],
          )
        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.logout))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}