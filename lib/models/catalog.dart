class Item {
  final String  id ;
  final String  name ;
  final String  desc;
  final num price;
  final String  color;
  final String  image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
    id:"new001",
    name: "iphone 17 pro max",
    desc: "Apple iphone 17 ",
    price: 99999 ,
    color: "#33505a",
    image: 
    "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-air-finish-unselect-gallery-1-202509_GEO_EMEA?wid=5120&hei=2880&fmt=webp&qlt=90&.v=NUpaQVl1bitSNmJWZUdKdi9QZHhsR3J2UHBBV3orM3VMYVQ4cFJXZmQxVzZhTHJkRit4dmNvT3JoY0NOUVJTRnkwdVFSV09pcktsRHViVExZS1gwS3c3b3pFWnhZZ2g0M0pRR0pEdHVSRUVyZ3JGNlhWRm92OXBXT2FQSVNsRTZyYU4vMVkvbTdqT0FiL3NnNnJmQVB3&traceId=1"
  )
];