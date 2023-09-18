class CatalogModel {
  static List<Item> items = [
    Item(
      id : 1,
       name :'Iphone 15 pro', 
       desc :'Iphone 15 pro is available here',
      price : "999", 
     color: "#33505a",
      image : 'https://imageio.forbes.com/specials-images/imageserve/641397e79f04500b85460b8f/Apple--iPhone-15--iPhone-15-Pro-Max--iPhone-15-Pro--iPhone-15-Pro-design--iPhone-15/0x0.jpg?format=jpg&crop=923,692,x364,y0,safe&width=1440'
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image});

   factory Item.fromMap(Map<String, dynamic> map) {
  return Item(
    id: map["id"],
    name: map["name"],
    desc: map["desc"],
    price: map["price"],
    color: map["color"],
    image: map["image"],
  );
}
  toMap() =>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image



  };
}
