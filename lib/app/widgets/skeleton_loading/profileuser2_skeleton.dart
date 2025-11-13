import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../core/utils/auto_responsive.dart';
import 'package:apptiket/app/widgets/navbar.dart';

class ProfileUser2Skeleton extends StatelessWidget {
  const ProfileUser2Skeleton({Key? key}) : super(key: key);

  // Color palette matching ProfileUser2View
  static const Color primaryBlue = Color(0xff181681);
  static const Color lightBlue = Color(0xFFE8E9FF);
  static const Color backgroundColor = Color(0xFFFAFAFA);
  static const Color cardColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    final res = AutoResponsive(context);

    return Scaffold(
      backgroundColor: primaryBlue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryBlue,
        title: Text(
          'Profil Toko',
          style: TextStyle(
            fontSize: res.sp(18),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background decoration
            Container(
              height: res.hp(25),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [primaryBlue, Color(0xff0F0B5C)],
                ),
              ),
            ),
            
            // Content container
            Padding(
              padding: EdgeInsets.only(top: res.hp(10)),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Main white container
                      Container(
                        padding: EdgeInsets.only(
                          top: res.hp(7),
                          bottom: res.hp(3),
                        ),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(res.wp(8)),
                            topRight: Radius.circular(res.wp(8)),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, -3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Company name skeleton
                            _buildShimmerContainer(
                              width: res.wp(60),
                              height: res.hp(3),
                              borderRadius: res.wp(2),
                            ),
                            
                            SizedBox(height: res.hp(2.5)),
                            
                            // Sales statistics card skeleton
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: res.wp(5)),
                              child: Container(
                                padding: EdgeInsets.all(res.wp(5)),
                                decoration: BoxDecoration(
                                  color: cardColor,
                                  borderRadius: BorderRadius.circular(res.wp(4)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.04),
                                      blurRadius: 10,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Title skeleton
                                    Row(
                                      children: [
                                        _buildShimmerContainer(
                                          width: res.wp(10),
                                          height: res.wp(10),
                                          borderRadius: res.wp(2),
                                        ),
                                        SizedBox(width: res.wp(3)),
                                        _buildShimmerContainer(
                                          width: res.wp(40),
                                          height: res.hp(2),
                                          borderRadius: res.wp(1),
                                        ),
                                      ],
                                    ),
                                    
                                    SizedBox(height: res.hp(2)),
                                    
                                    // Sales amount skeleton
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: res.hp(2.5),
                                        horizontal: res.wp(4),
                                      ),
                                      decoration: BoxDecoration(
                                        color: lightBlue.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(res.wp(3)),
                                      ),
                                      child: Column(
                                        children: [
                                          _buildShimmerContainer(
                                            width: res.wp(30),
                                            height: res.hp(2),
                                            borderRadius: res.wp(1),
                                          ),
                                          SizedBox(height: res.hp(1)),
                                          _buildShimmerContainer(
                                            width: res.wp(50),
                                            height: res.hp(4),
                                            borderRadius: res.wp(1),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                            SizedBox(height: res.hp(3)),
                            
                            // Menu items skeleton
                            ..._buildMenuItemSkeletons(context),
                          ],
                        ),
                      ),
                      
                      // Avatar skeleton positioned on top
                      Positioned(
                        top: -res.wp(12),
                        left: 0,
                        right: 0,
                        child: Container(
                          width: res.wp(24),
                          height: res.wp(24),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: _buildShimmerContainer(
                            width: res.wp(24),
                            height: res.wp(24),
                            borderRadius: res.wp(12),
                            isCircle: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 2, // Tab index for profile
        onTap: (index) {
          // Keep navigation functionality even in skeleton
        },
      ),
    );
  }

  // Build shimmer container
  Widget _buildShimmerContainer({
    required double width,
    required double height,
    required double borderRadius,
    bool isCircle = false,
  }) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      period: Duration(milliseconds: 1500),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: isCircle 
              ? null 
              : BorderRadius.circular(borderRadius),
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
      ),
    );
  }

  // Build menu item skeletons
  List<Widget> _buildMenuItemSkeletons(BuildContext context) {
    final res = AutoResponsive(context);
    final menuItems = [
      'Edit Profil Toko',
      'Ganti Password',
      'Edit / Tambah QR Code',
      'Syarat & Ketentuan',
      'Keluar',
    ];

    return menuItems.map((item) => 
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: res.wp(5),
          vertical: res.hp(1),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: res.hp(2),
            horizontal: res.wp(4),
          ),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(res.wp(3)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _buildShimmerContainer(
                    width: res.wp(10),
                    height: res.wp(10),
                    borderRadius: res.wp(2),
                  ),
                  SizedBox(width: res.wp(3)),
                  _buildShimmerContainer(
                    width: res.wp(40),
                    height: res.hp(2),
                    borderRadius: res.wp(1),
                  ),
                ],
              ),
              _buildShimmerContainer(
                width: res.wp(4),
                height: res.wp(4),
                borderRadius: res.wp(1),
              ),
            ],
          ),
        ),
      ),
    ).toList();
  }
}
