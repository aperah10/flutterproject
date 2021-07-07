// Making class of product
class Item {
  late String id;
  late String name;
  late String desc;
  late int price;
  late String picurl;

  // making name constructor
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price ,
      required this.picurl});
}

// Making Class for Data
class CatModel {
  static final items = [
    Item(
     id:'1' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_6.png',
    ),
    Item(
     id:'2' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_6.png',
    ),
    Item(
     id:'3' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_7.png',
    ),
    Item(
     id:'4' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_6.png',
    ),
    Item(
     id:'5' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_11.png',
    ),
    Item(
     id:'6' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_7.png',
    ),
    Item(
     id:'7' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_6.png',
    ),
    Item(
     id:'8' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_12.png',
    ),
    Item(
     id:'9' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_8.png',
    ),
    Item(
     id:'10' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_8.png',
    ),
    Item(
     id:'11' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_12.png',

    ),
    Item(
     id:'12' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_12.png',
    ),
       Item(
     id:'13' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_8.png',
    ),
       Item(
     id:'14' ,
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_7.png',
    ),
       Item(
     id:'15',
      name: "rahul",
      desc: "this is nice product",
      price: 510,
      picurl: 'images/mask_group_12.png',
    ),
  ];
}
