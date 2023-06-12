import 'package:flutter/material.dart';

class MyShoppingList extends StatefulWidget {
  const MyShoppingList({super.key});

  @override
  State<MyShoppingList> createState() => _MyShoppingListState();
}

class _MyShoppingListState extends State<MyShoppingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Cart is empty')),
              );
            },
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            leading: Icon(Icons.apple_outlined,size: 30,),
            title: Text('Apples',style: TextStyle(fontSize:25),),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag,size: 30,),
            title: Text('Bags',style: TextStyle(fontSize:25),),
          ),
          ListTile(
            leading: Icon(Icons.computer,size: 30,),
            title: Text('Laptop',style: TextStyle(fontSize:25),),
          ),
          ListTile(
            leading: Icon(Icons.phone_android,size: 30,),
            title: Text('Mobile',style: TextStyle(fontSize:25),),
          ),
          ListTile(
            leading: Icon(Icons.wallet,size: 30,),
            title: Text('Wallet',style: TextStyle(fontSize:25),),
          ),
          ListTile(
            leading: Icon(Icons.watch,size: 30,),
            title: Text('Watch',style: TextStyle(fontSize:25),),
          ),
        ],
      ),
    );
  }
}
