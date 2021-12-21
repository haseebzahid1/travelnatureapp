import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../moduls/recommended_model.dart';
import '../style/aoo_colos.dart';
import '../widget/app_button.dart';

class LandingPage extends StatelessWidget {
   final BlogImage blogblog;
  const LandingPage({Key? key,required this.blogblog}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  final Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        itemCount: blogblog.imageList.length,
          itemBuilder: (context, index) {

        return Container(
          height: size.height,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(blogblog.imageList[index]),
                  ),
                ),
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 20.8, left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: AppButton(color: Colors.white, backgroundColor: Colors.grey.withOpacity(0.8),
                          size: 40, borderColor: AppColors.textColor1, isIcon:true,icon: Icons.arrow_back,),
                      ),
                      AppButton(color: Colors.white, backgroundColor: Colors.grey.withOpacity(0.4),
                        size: 40, borderColor: AppColors.textColor1, isIcon:true,icon: Icons.favorite,),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.only(top: 20.8, left: 18.0, right: 20.0),
                  child: Column(

                    children: [
                      Row(
                        children: List.generate(blogblog.imageList.length, (indexx){
                          return Container(
                            margin: EdgeInsets.only(left: 9),
                            width:index == indexx?30:16,
                            height: 16 ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color:index == indexx?Colors.red:Colors.orange,
                            ),

                          );
                        }),
                      ),
                      const SizedBox(height: 19.2,),
                      Padding(
                        padding:  EdgeInsets.only(right: 28),
                        child: Text(
                          blogblog.tagLine,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 33,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 19.2,),
                      Padding(
                        padding:  EdgeInsets.only(right: 45),
                        child: Text(blogblog.description,
                          overflow: TextOverflow.fade,
                          maxLines: 4,
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 48,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                'Start from',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,fontSize: 19),
                              ),
                              Text(
                                '\$ ${blogblog.price.toString()} / person',
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,fontSize: 24),
                              ),
                            ],
                          ),
                          Container(
                            height: 52.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.6),
                                color: Colors.white),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.only(left: 15.8, right: 15.8),
                                child: FittedBox(
                                  child: Text(
                                    'Explore Now >>',
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                    fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
