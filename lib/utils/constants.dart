import 'package:first_app/utils/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kBgWhiteColor = Color(0xFFF5F6F9);
const kTitleAppBarColor = Color(0XFF8B8B8B);
const kInActiveBottomNavColor = Color(0xFFB6B6B6);
const kBottomNavBoxShadowColor = Color(0xFFDADADA);
const kRedColor = Color(0xFFFF4848);
const kBannerColor = Color(0xFF4A3298);
const kBgCardCategoryColor = Color(0xFFFFECDF);
const kSeeMoreTextColor = Color(0xFFBBBBBB);
const kUnFavColor = Color(0xFFDBDEE4);
const kBgFavColor = Color(0xFFFFE6E6);
const kBgBottomDetail = Color(0xFFF6F7F9);
const kShadowColor = Color(0xFFB0B0B0);
const kCardCheckoutColor = Color(0xFFDADADA);

const kAnimationDuration = Duration(milliseconds: 200);
const defaultDuration = Duration(milliseconds: 250);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//Icons
const String kIconLock = 'assets/icons/Lock.svg';
const String kIconEmail = 'assets/icons/Mail.svg';
const String kIconGoogle = 'assets/icons/google-icon.svg';
const String kIconFb = 'assets/icons/facebook-2.svg';
const String kIconTwitter = 'assets/icons/twitter.svg';
const String kIconUser = 'assets/icons/User.svg';
const String kIconPhone = 'assets/icons/Phone.svg';
const String kIconLocation = 'assets/icons/Location point.svg';
const String kIconShop = 'assets/icons/Shop Icon.svg';
const String kIconHeart = 'assets/icons/Heart Icon.svg';
const String kIconChat = 'assets/icons/Chat bubble Icon.svg';
const String kIconProfile = 'assets/icons/User Icon.svg';
const String kIconCart = 'assets/icons/Cart Icon.svg';
const String kIconBell = 'assets/icons/Bell.svg';
const String kIconHeart2 = 'assets/icons/Heart Icon_2.svg';
const String kIconBack = 'assets/icons/Back ICon.svg';
const String kIconStar = 'assets/icons/Star Icon.svg';
const String kIconReceipt = 'assets/icons/receipt.svg';
const String kIconTrash = 'assets/icons/Trash.svg';
const String kIconCamera = 'assets/icons/Camera Icon.svg';
const String kIconSettings = 'assets/icons/Settings.svg';
const String kIconQuestionMark = 'assets/icons/Question mark.svg';
const String kIconLogOut = 'assets/icons/Log out.svg';

//Images
const String kImageSuccess = 'assets/images/success.png';
const String kImageOffer1 = 'assets/images/Image Banner 2.png';
const String kImageOffer2 = 'assets/images/Image Banner 3.png';
const String kImageProfile = 'assets/images/Profile Image.png';


// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  counter: Offstage(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
