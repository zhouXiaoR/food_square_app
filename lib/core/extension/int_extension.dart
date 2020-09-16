import 'package:food_square_app/core/extension/screen_fit.dart';

extension IntFit on int {
  double get px{
    return ZZSizefit.setPx(this.toDouble());
  }

  double get rpx{
    return ZZSizefit.setRpx(this.toDouble());
  }
}