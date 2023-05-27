import 'package:get/get.dart';

//  The problem right now with the app is that
//  every margin padding we are providing solid hard core
//  value even for height so our app might not work correct
//  for the smaller devices, so we have to provide dynamic
//  values for these by using media query etc.
//  Here we create class "Dimension"
//  having static members defining the hight and width of device
//  mostly,
//  We can also find out and print to our console height by using media query as:
//  print("Current height is : " + MediaQuery.of(context).size.height.toString());
//  Problem with Media Query is that it is bound with context means we have to use
//  stateful classes inside our app instead of stateless classes bcz of
//  requirement of "Context" as it only exist with stateful classes only.
//  In order to solve this problem we are gonna use "Getx" package.
//  Getx package mostly help with routing & state management
//  but with our getx package we are gonna use it for device
//  height & width settings.
//  "Get" package will not get the device height and width unless
//  we wrap our whole app inside of "GetMaterialApp" instead of
//  "MaterialApp", then the get can access the context of whole app as:
class Dimensions {
  //  I have to update my sdk to use "!" with context
  //  with this I make sure that the context can't be null.
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //  Now we are gonna get the height and width for our big
  //  container displaying image below Header as:
  static double pageViewContainer = screenHeight / 3.84;
  //  In above code 3.84 is achive in such a way that:
  //  If, height of whole mobile screen = "844"
  //  And as we know, for this screen device the
  //  suitable height of container {displaying image} is "220"
  //  then we do is: "844 / 220 = 3.84"
  //  thorugh this if height of device increase now, we also
  //  increase the height of container and same if height of
  //  device is smaller.

  //  Below is the code for smaller container below the big
  //  picture container as:
  static double pageViewTextContainer = screenHeight / 7.03;
  //  Above, we get 7.03 by using following ratio as:
  //  Total device height = 844
  //  Suitable container height for such device = 120
  //  Required scaling factor = 844 / 120 = 7.03

  //  Below is the height of whole container + dots_indicator
  //  container height basically backgorund of these containers
  //  so in order to dynamic it we use following formula:
  static double pageView = screenHeight / 2.64;
  //  Above, we get 2.64 by using following ratio as:
  //  Total device height = 844
  //  Suitable container height for such device = 320
  //  Required scaling factor = 844 / 320 = 2.64

  // ========================***===========================
  //  Within this range are dynamic values for the height of
  //  padding and margins calculated as:
  //  In below code we are optimizing the size of container
  //  displaying the text, rating and time & distance section as:
  static double height10 = screenHeight / 84.4;
  //  The scaling factor = "84.4"
  //  We get this by using following method:
  //  Total device height = 844
  //  Suitable SizedBox height for spacing between pageViewTextContainer
  //  Text section (Baryani) and rating section = 10
  //  Required scaling factor = 844 / 10 = 84.4
  static double height20 = screenHeight / 42.2;
  //  The scaling factor = "42.2"
  //  We get this by using following method:
  //  Total device height = 844
  //  Suitable SizedBox height for spacing between pageViewTextContainer
  //  rating section and distance & time section = 20
  //  Required scaling factor = 844 / 20 = 42.2

  //  We have take care of the hieght of sizedbox dynamically now,
  //  we are gonna calculate dynamic vales for padding for the Text
  //  Container, this can be calculated by using following formula as:
  static double height15 = screenHeight / 56.27;
  //  The scaling factor = "56.2"
  //  We get this by using following method:
  //  Total device height = 844
  //  Suitable "Padding top" value for pageViewTextContainer = 15
  //  Required scaling factor = 844 / 15 = 56.2
  static double height30 = screenHeight / 28.13;

  //  Since height of 45 is required inside the header section
  //  for margin we do calculate following height as:
  static double height45 = screenHeight / 18.76;

  // ==========================***=========================

  // ==========================***=========================
  //  Within this range are dynamic values for the width of
  //  padding and margins calculated as:
  static double width5 = screenHeight / 168.8;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.7;
  // ==========================***=========================

  //  Below lies my own experimenting code as:
  static double Boxwidth10 = pageViewTextContainer / 10;

  //  Similarly, for smaller devices we also want the font
  //  size to be of smaller size as well so we also calculate dynamic value
  //  for fonts for pageVewTexTContainer as:
  static double font20 = screenHeight / 42.2;
  //  We are not calculating scalefactor if height = 20
  //  bcz we have already calculated the scaling factor
  //  for this height above.

  // ==========================***=========================
  //    Below is the code where we calculate dynamic values
  //            for Border Radius as:
  //  Below is the size of BorderRadius of image and text
  //  container calculated dynamically as:
  static double radius20 = screenHeight / 42.2;
  //  Above we are calculating BorderRadius value for
  //  Text container (displaying Name, Rating, Distance_&_Time)
  //  and it's hard value = 20,
  //  We are not calculating scalefactor if height = 20
  //  bcz we have already calculated the scaling factor
  //  for this height above.
  static double radius30 = screenHeight / 28.13;
  // static double radius30 = screenHeight / 42.2;
  //  Above we are calculating BorderRadius value for
  //  Image container and it's hard value = 30, so
  //  we calculated our dynamically coded radius value by:
  //  Device height / Suitable borderRadius height = scaling factor
  //  So, scaling factor = 844 / 30 = 28.13

  //  Below is the radius which we are using for margin and padding
  //  the header or app title as:
  static double radius15 = screenHeight / 56.27;
  // ==========================***=========================

  // ==========================***=========================
  //  Below is the code throught which we calculate the
  //  scaling factor for the size of icon as:
  static double iconSize24 = screenHeight / 35.17;
  // ==========================***=========================

  // ==========================***=========================
  //  List view size
  static double listViewImgSize = screenWidth / 3.25;
  //  We get the scalling factor of 3.25 by following:
  //  390 / 120 = 3.25;
  //  Here, Container image size = 120
  //  and, the screen width we use is 390

  static double listViewTextContSize = screenWidth / 3.9;
  //  We get the scaling factor of 3.9 by following as:
  //      390 / 100 = 3.9
  //  Here, List View Text Container Size = 100
  //  and, the screen width we use is 390
  // ==========================***=========================

  // ==========================***=========================
  //  Popular Food screen (widget) inside page folder all
  //  dynamic  values are given below as:
  static double popularFoodImgSize = screenHeight / 2.41;
  //  We get  the scaling factor of "2.41" because the suitable
  //  height for our image on larger phone is 350
  //  and the device width on which is working appropriately
  //  is  : 800,  So, if we use following values as:
  //  800 / 350 = 2.41 which is the factor we use
  static double iconSize16 = screenHeight / 52.75;
  //  Below is the code for dynamic bottomHeightBar as:
  static double bottomHeightBar = screenHeight / 7.03;
  // ==========================***=========================

  // ==========================***=========================
  //  Below is the font-size which we created dynamically
  //  only for our file:  app_column
  //  Since the text we pass is an title of the info container
  //  so we want to provide much bigger height to that font
  //  then what usually proivided by "BigText()", so we do following
  //  as:
  static double font26 = screenHeight / 32.36;
  // ==========================***=========================

  // ==========================***=========================
  //  Below is the font-size which we created dynamically
  //  only for our file:  expandable_text_widget
  //  Since the text we pass is an information
  //  so we want to provide much bigger height to that font
  //  then what usually proivided by "SmallText()", so we do following
  //  as:
  static double font16 = screenHeight / 52.75;
  //  I got the scaling factor by the help of following formula as:
  //  height of screen = 844 ,    Suitable font size required is: 16
  //  So if we do following:      844 / 16      we got: 52.75
  // ==========================***=========================
}
