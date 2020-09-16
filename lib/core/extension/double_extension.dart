import 'package:food_square_app/core/extension/screen_fit.dart';

extension DoubleFit on double {
  double get px{
    return ZZSizefit.setPx(this);
  }

  double get rpx{
    return ZZSizefit.setRpx(this);
  }
}