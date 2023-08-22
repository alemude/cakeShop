// import 'package:cakeshop/Provider/appState.dart';
// import 'package:cakeshop/Screens/cart/cart.dart';
// import 'package:cakeshop/Screens/cart/cartCounter.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// typedef QuantityCallBack = void Function(int quantity);

// class HomePage extends StatefulWidget {
//   HomePage({Key? key, screenSize, image, itemName, price, quantity,this.onQuantityChanged,})
//       : super(key: key);

//   Size? screenSize;
//   String? image, itemName, price;
//   String? quantity;
//    ValueChanged<int>? onQuantityChanged;

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int count = 1;
//   List<double> _rating = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
//   List<int> _quantities = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

//   int _ratingl = 0;
// void _onQuantityChanged(int index,int newQuantity){
// setState(() {
//  _quantities[index]=newQuantity;
// });
//   }

//   final TextEditingController _searchController = TextEditingController();
//   void _cakeQuantity(int index, int quantity) {
//     setState(() {
//       _quantities[index] = quantity;
//       widget.onQuantityChanged!(_quantities as int);
//     });
//   }

//   void _setRatingAsOne(int index, double rate) {
//     setState(() {
//       _rating[index] = rate;
//       _ratingl = 1;
//     });
//   }

//   void _setRatingAsTwo(int index, double rate) {
//     setState(() {
//       _rating[index] = rate;
//       _ratingl = 2;
//     });
//   }

//   void _setRatingAsThree(int index, double rate) {
//     setState(() {
//       _rating[index] = rate;
//       _ratingl = 3;
//     });
//   }
//   void _onDecreament(int index){
//     _onQuantityChanged(index, _quantities[index]-1);
//   }
//     void _onIncreament(int index){
//     _onQuantityChanged(index, _quantities[index]-1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(232, 214, 219, 221),
//       body: Container(
//         child: ListView(
//           padding: const EdgeInsets.only(left: 15),
//           shrinkWrap: true,
//           children: <Widget>[
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const CircleAvatar(
//                   radius: 20,
//                   backgroundColor: Colors.white,
//                   child: ClipOval(
//                       child:
//                           Image(image: AssetImage("assets/images/logo.jpg"))),
//                 ),
//                 const Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Icon(
//                       Icons.location_on,
//                       color: Colors.blue,
//                     ),
//                     Text(
//                       'DEMBEL,BOLE',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontFamily: 'nunito',
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 15.0),
//                   child: CircleAvatar(
//                     backgroundColor: Colors.blue,
//                     radius: 20,
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => CartScreen()));
//                       },
//                       child: Stack(
//                         children: [
//                           const Align(
//                               alignment: Alignment.bottomCenter,
//                               child: Icon(Icons.shopping_cart_rounded,
//                                   color: Colors.white, size: 25)),
//                           Positioned(
//                             top: 0,
//                             left: 0,
//                             right: 0,
//                             child: Consumer<ProductsVM>(
//                               builder: (context, value, child) => CartCounter(
//                                 count: value.lst.length.toString(),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [],
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//               Container(
//                 height: 40,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Colors.white,
//                 ),
//                 child: TextField(
//                   controller: _searchController,
//                   decoration: const InputDecoration(
//                     hintText: 'Search Cake',
//                     prefixIcon: Icon(Icons.search),
//                     contentPadding: EdgeInsets.all(10),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 40,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.blue,
//                 ),
//                 child: PopupMenuButton<String>(
//                   icon: const Icon(
//                     Icons.menu,
//                     color: Colors.white,
//                   ),
//                   onSelected: (String result) {},
//                   itemBuilder: (BuildContext context) =>
//                       <PopupMenuEntry<String>>[
//                     const PopupMenuItem<String>(
//                       value: 'birthday',
//                       child: Text('Birthday Cake'),
//                     ),
//                     const PopupMenuItem<String>(
//                       value: 'wedding',
//                       child: Text('Wedding cake'),
//                     ),
//                     const PopupMenuItem<String>(
//                       value: 'graduation',
//                       child: Text('Graduation Cake'),
//                     ),
//                     const PopupMenuItem<String>(
//                       value: 'holiday',
//                       child: Text('Holiday Cake'),
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               height: 25,
//             ),
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Recomended',
//                   style: TextStyle(
//                     color: Color.fromARGB(255, 21, 21, 20),
//                     fontFamily: 'valera',
//                     fontSize: 17,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Icon(Icons.more_horiz),
//               ],
//             ),
//             SizedBox(
//               height: 330,
//               child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   physics: const BouncingScrollPhysics(),
//                   children: [
//                     for (var i = 0; i < 9; i++)
//                       HomeSlider(
//                         'assets/images/f8.jpg',
//                         'Birthday cake',
//                         '2000',
//                         '${_quantities[0]}',
//                         //(int quantity) {
//                         //_cakeQuantity(0, quantity);
//                         //},
//                         'This is the best teste cake that you have not purchase yet',
//                         '$count',
//                       ),
//                     HomeSlider(
//                       'assets/images/f6.jpg',
//                       'Holiday cake',
//                       '1500',
//                       '${_quantities[1]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f10.jpg',
//                       'Wedding cake',
//                       '1300',
//                       '${_quantities[2]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f5.jpg',
//                       'Graduation cake',
//                       '1190',
//                       '${_quantities[3]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f7.jpg',
//                       'Holiday cake',
//                       '1500',
//                       '${_quantities[4]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f2.jpg',
//                       'Birthday cake',
//                       '1600',
//                       '${_quantities[5]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f1.jpg',
//                       'Graduation Cake',
//                       '1400',
//                       '${_quantities[6]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f8.jpg',
//                       'Cake Weddig Cake',
//                       '3000',
//                       '${_quantities[7]}',
//                       //(int quantity) {
//                       //_cakeQuantity(0, quantity);
//                       //},
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f9.jpg',
//                       'Graduation Cake',
//                       '900',
//                       '${_quantities[8]}',
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                     HomeSlider(
//                       'assets/images/f10.jpg',
//                       'Birthday Cake',
//                       '1200',
//                       '${_quantities[9]}',
//                       'This is the best teste cake that you have not purchase yet',
//                       '$count',
//                     ),
//                   ]),
//             ),
//             const Text(
//               'Last Order',
//               style: TextStyle(
//                 color: Color.fromARGB(255, 21, 21, 20),
//                 fontFamily: 'valera',
//                 fontSize: 17,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             FractionallySizedBox(
//               alignment: Alignment.topLeft,
//               widthFactor: 0.7,
//               child: Container(
//                 height: 70,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white,
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: const DecorationImage(
//                             image: AssetImage('assets/images/f1.jpg')),
//                         color: Colors.white,
//                       ),
//                     ),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Blackforest cake',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'valera',
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           'Birthday Cake',
//                           style: TextStyle(
//                             color: Colors.black38,
//                             fontFamily: 'valera',
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => CartScreen()));
//         },
//         child: const Text(
//           'Order',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   HomeSlider(
//     String image,
//     String itemName,
//     String price,
//     String quantity,
//     String description,
//     String rate,
//   ) {
//     var screenSize = MediaQuery.of(context).size;
//     return Padding(
//         padding: const EdgeInsets.only(left: 15, right: 15),
//         child: SizedBox(
//             height: 320,
//             width: 220,
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: 320,
//                     ),
//                     Positioned(
//                       top: 20,
//                       child: Container(
//                         padding: const EdgeInsets.only(
//                           left: 10,
//                           right: 10,
//                         ),
//                         height: 320,
//                         width: 225,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: const Color.fromARGB(255, 252, 250, 250),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                         left: 0,
//                         top: 20,
//                         child: Container(
//                             height: 150,
//                             width: 220,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                 image: AssetImage(image),
//                                 fit: BoxFit.cover,
//                               ),
//                             ))),
//                     Positioned(
//                       top: 170,
//                       left: 60,
//                       child: Text(
//                         itemName,
//                         style: const TextStyle(
//                           color: Color.fromARGB(255, 17, 1, 1),
//                           fontFamily: 'varela',
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 190,
//                       child: Container(
//                         padding: const EdgeInsets.only(left: 10, right: 10),
//                         width: 220,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Text(
//                               price,
//                               style: const TextStyle(
//                                 color: Color.fromARGB(255, 17, 1, 1),
//                                 fontFamily: 'varela',
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
// Row(
//       children: [
//         IconButton(
//           icon: Icon(Icons.remove),
//           onPressed: () {
//             _onDecreament; // Call the onQuantityChanged callback with updated quantity
//           },
//         ),
//         Text(quantity),
//         IconButton(
//           icon: Icon(Icons.add),
//           onPressed: () {
//             _onIncreament; // Call the onQuantityChanged callback with updated quantity
//           },
//         ),
//       ],
//     )],
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                         top: 225,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                           child: SizedBox(
//                             width: 200,
//                             child: Text(
//                               description,
//                               style: const TextStyle(
//                                 fontSize: 12,
//                               ),
//                             ),
//                           ),
//                         )),
//                     Positioned(
//                       top: 250,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         mainAxisSize: MainAxisSize.max,
//                         children: <Widget>[
//                           for (var i = 0; i < 9; i)
//                             Container(
//                               padding:
//                                   const EdgeInsets.only(left: 15, right: 15),
//                               child: IconButton(
//                                 icon: (_ratingl >= 1
//                                     ? const Icon(
//                                         Icons.star,
//                                         size: 20,
//                                       )
//                                     : const Icon(
//                                         Icons.star_border,
//                                         size: 20,
//                                       )),
//                                 color: Colors.red[500],
//                                 onPressed: (){},
//                                 iconSize: 20,
//                               ),
//                             ),
//                           Container(
//                             padding: const EdgeInsets.only(left: 15, right: 15),
//                             child: IconButton(
//                               icon: (_ratingl >= 2
//                                   ? const Icon(
//                                       Icons.star,
//                                       size: 20,
//                                     )
//                                   : const Icon(
//                                       Icons.star_border,
//                                       size: 20,
//                                     )),
//                               color: Colors.red[500],
//                               onPressed: (){},
//                               iconSize: 20,
//                             ),
//                           ),
//                           Container(
//                             padding: const EdgeInsets.only(left: 15, right: 15),
//                             child: IconButton(
//                               icon: (_ratingl >= 3
//                                   ? const Icon(
//                                       Icons.star,
//                                       size: 20,
//                                     )
//                                   : const Icon(
//                                       Icons.star_border,
//                                       size: 20,
//                                     )),
//                               color: Colors.red[500],
//                               onPressed: (){},
//                               iconSize: 20,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       left: 50,
//                       top: 285,
//                       child: Consumer<ProductsVM>(
//                         builder: (context, value, child) => InkWell(
//                           onTap: () {
//                             value.add(image, itemName, price, quantity);
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.all(2.0),
//                             child: Container(
//                                 alignment: Alignment.center,
//                                 height: screenSize.height * 0.04,
//                                 width: screenSize.width * 0.3,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(10),
//                                     color: Colors.blue),
//                                 child: const Center(
//                                   child: Text(
//                                     "Add to cart",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 )),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )));
//   }
// }
// (