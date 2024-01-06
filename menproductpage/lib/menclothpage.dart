
import 'package:flutter/material.dart';

import 'package:menproductpage/star_rating.dart';

class MenClothingPage extends StatelessWidget {
  final List<MenClothingItem> clothingItems = [
    MenClothingItem("Green Mountain Beta Warehouse...", "assets/shirt.jpg", 700.99),
    MenClothingItem("white satin corset top Ruffle...","assets/jeans.jpg", 900.99),
    MenClothingItem("Mountain Beta warehouse...","assets/jacket.jpg", 400.99),
    MenClothingItem("Printed Sleeverless Tiered Swing Dress", "assets/shoes.jpg",300.99),

    
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
       
appBar: AppBar(
  
  title: Center(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10.0,left: 9 ),
      child: Column(
        children: [
          Center(child: Text("Sion Indore",style: TextStyle(color: Colors.black),)),
          SizedBox(height: 80,),
          Text("SION ",style: TextStyle(color: Colors.black,fontSize: 50),
          ),
          Text("DATAMATICS",style: TextStyle(color: Colors.black),),
           SizedBox(height: 20,),
              Text("Want the hottest  trends right now? lipsy has all the styles you need to create that glamourous sexy & sophisticated you!",style: TextStyle(color: Colors.black,fontSize: 10),),
                Text("Want the hottest  trends right now? lipsy has all the styles you need to create that glamourous sexy & sophisticated you!",style: TextStyle(color: Colors.black,fontSize: 10),),
      ])
      
      ,
    ),
  ),
  
  backgroundColor: Color.fromARGB(255, 255, 255, 255),
  toolbarHeight: 300,
  leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
     padding: EdgeInsets.only(bottom: 200),
    onPressed: () {
      // Add navigation logic here to go back
    },
  ),
  actions: [
    IconButton(
      icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
      padding: EdgeInsets.only(bottom: 200),
      onPressed: () {
        // Add cart action logic here
      },
    ),
  ],
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(50), // Adjust the preferred size as needed
    child: Padding(
      padding: const EdgeInsets.all(8.0),

      
    
      child: TextField(
        
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
          
          hintText: 'Find something...',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: Icon(Icons.search),
       
        ),
      )
,
    ),
  ),
),

    
      body: GridView.builder(
     
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        
        padding: EdgeInsets.only(top: 40),
        reverse: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 12.0, 
            childAspectRatio:1,
          

        ),
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          return MenClothingCard(clothingItems[index]);
        },
      ),
    );
  }
}

class MenClothingItem {
  final String name;
  final String image;
  final double price;

  MenClothingItem(this.name, this.image, this.price);
}

class MenClothingCard extends StatelessWidget {
  final MenClothingItem item;

  MenClothingCard(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      
        child: Container(
          height: 300,
        
          decoration: BoxDecoration
        
          
          (   color: Colors.white,borderRadius: BorderRadius.circular(40),),
      
      // Set the desired height for the card
          child: Column(
            
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(9.0),top: Radius.circular(9)),
                child: Image.asset(
                  
                  item.image,
                  height: 100,
                  width:200,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                
                child: Text(
                  
                  
                  '\$${item.price.toStringAsFixed(2)}',
              
                  style: TextStyle(
                    
                    fontSize: 12,
                  height: 1,
                    color: Color.fromARGB(255, 100, 99, 99),
                  ),
                ),
              ),
            
  
    
       SizedBox(
                                                    height: 2,
                  ),
                                  
           Padding(padding: EdgeInsets.only(left: 15)),
    
         
                                  
    
                                                  
    
        ],
      ),
           
             
             
    
        )
          
          ),
    );
     
    
  }
}