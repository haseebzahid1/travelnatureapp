import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../moduls/beach_model.dart';
import '../moduls/popular_model.dart';
import '../moduls/recommended_model.dart';
import '../screens/landing_screen.dart';
import '../style/aoo_colos.dart';
import '../widget/app_button.dart';
import '../widget/app_text_widge.dart';

class HonePage extends StatefulWidget {
  const HonePage({Key? key}) : super(key: key);

  @override
  _HonePageState createState() => _HonePageState();
}

class _HonePageState extends State<HonePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    final Size size  = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body:SafeArea(

         child: ListView(
           physics: BouncingScrollPhysics(),
           children: [
             Container(
               margin: EdgeInsets.only(top: 20.8, left: 20.0, right: 20.0),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       AppButton(color: Colors.grey, backgroundColor: Colors.white38,
                         size: 40, borderColor: AppColors.textColor1, isIcon:true,icon: Icons.dehaze,),
                       AppButton(color: Colors.grey, backgroundColor: Colors.white38,
                         size: 40, borderColor: AppColors.textColor1, isIcon:true,icon: Icons.favorite_border,),
                     ],
                   ),
                   SizedBox(height: 18,),
                   Padding(
                     padding: const EdgeInsets.only(right: 44),
                     child: AppText(text: "Explore  the Nature",size: 36.6,fontWeight: FontWeight.w700,color: Colors.black.withOpacity(0.7),),
                   ), SizedBox(height: 8,),
                   Container(
                     child: Align(
                       alignment: Alignment.centerLeft,
                       child: TabBar(
                         // labelPadding: EdgeInsets.only(left: 0, right: 18.4),
                         indicatorSize: TabBarIndicatorSize.label,
                         physics: BouncingScrollPhysics(),
                         isScrollable: true,
                         labelColor: Colors.black,
                         unselectedLabelColor: Color(0xFF8a8a8a),
                         labelStyle: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w700),
                         unselectedLabelStyle: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.w700),
                         controller: _tabController,
                         // indicator:CircleTabIndicator(color: AppColors.mainColor, radius: 4) ,
                         tabs: const [
                           Tab(text: "Recommended"),
                           Tab(text: "People",),
                           Tab(text: "New Destition",),
                           Tab(text: "Hidden Germs",),
                         ],
                       ),
                     ),
                   ),
                   const SizedBox(height: 20.0,),
                   Container(
                     width: double.maxFinite,
                     height: 200.4,

                     // padding: EdgeInsets.only(right: 20),
                     child: TabBarView(
                       controller: _tabController,
                       children:  [
                         Container(
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             physics: BouncingScrollPhysics(),
                             itemCount: blogLists.length,
                             itemBuilder: (context, index){
                               BlogImage blogItem = blogLists[index];
                               return InkWell(
                                 onTap: (){
                                   Navigator.of(context).push(MaterialPageRoute(builder: (Contexy)=>LandingPage(
                                       blogblog: blogLists[index],
                                   )));
                                 },
                                 child: Container(
                                     margin:EdgeInsets.only(left: 10),
                                     width: size.width * 70/100,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(9.6),
                                       image: DecorationImage(
                                           fit: BoxFit.cover,
                                           image:NetworkImage(blogItem.img),
                                       ),
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.grey.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 8,
                                           offset: Offset(0, 3), // changes position of shadow
                                         ),
                                       ],
                                     ),
                                   child: Stack(
                                     children: <Widget>[
                                       Positioned(
                                         bottom: 19.2,
                                         left: 19.2,
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(4.8),
                                           child: BackdropFilter(
                                             filter: ImageFilter.blur(
                                                 sigmaY: 19.2, sigmaX: 19.2),
                                             child: Container(
                                               height: 36,
                                               padding: const EdgeInsets.only(
                                                   left: 16.72, right: 14.4),
                                               alignment: Alignment.centerLeft,
                                               child: Row(
                                                 children: <Widget>[
                                                  SvgPicture.asset("assets/svg/icon_location.svg"),
                                                   SizedBox(
                                                     width: 9.52,
                                                   ),
                                                   Text(
                                                     blogItem.name,
                                                     style: GoogleFonts.lato(
                                                         fontWeight: FontWeight.w700,
                                                         color: Colors.white,
                                                         fontSize: 16.8),
                                                   )
                                                 ],
                                               ),
                                             ),
                                           ),
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
                               );
                             },),
                         ),

                         Text("Hey"),
                         Text("There"),
                         Text("By"),
                       ],
                     ),
                   ),
                   const SizedBox(height: 20.0,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children:  [
                       const Text(
                         'Popular Categories',
                         style: TextStyle(
                           fontWeight: FontWeight.w700,fontSize: 26,
                           color: Color(0xFF000000),
                         ),
                       ),
                   AppText(text: "Show All",color: AppColors.textColor1,size: 18,),
                 ],
                   ),
                   const SizedBox(height: 20.0,),
                   Container(
                     height: 45.6,
                     child: ListView.builder(
                       itemCount: popularLists.length,

                       scrollDirection: Axis.horizontal,
                       physics: BouncingScrollPhysics(),
                       // padding: EdgeInsets.only(left: 28.8, right: 9.6),
                       itemBuilder: (context, index) {
                         Popular   popularItem = popularLists[index];
                       return Container(
                         margin: EdgeInsets.only(right: 19.2),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(9.6),
                           color: popularItem.color,
                         ),
                         child:  Row(
                         // crossAxisAlignment: CrossAxisAlignment.center,
                         // mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           Container(
                             padding: EdgeInsets.symmetric(horizontal: 19.0),
                             child: Image.asset(
                               popularItem.img,
                               height: 17.8,
                             ),
                           ),
                         ],
                       ),
                       );
                     },),
                   ),
                   const SizedBox(height: 20.0,),
                   Container(
                     height: 194.8,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       physics: BouncingScrollPhysics(),
                       itemCount: beaches.length,
                         itemBuilder: (context, index) {
                           BeachModel beachItem = beaches[index];
                           return Container(
                             width: 188.4,
                             margin: EdgeInsets.only(right: 16.8),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(9.6),
                               image: DecorationImage(
                                 image: NetworkImage(beachItem.img),fit: BoxFit.cover
                               )
                             ),
                           );
                         },),
                   ),
                 ],
               ),
             ),

           ],
         ),
      )
    );
  }
}
