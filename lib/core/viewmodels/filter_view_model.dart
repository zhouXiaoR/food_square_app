import 'package:flutter/material.dart';
import 'package:food_square_app/core/cachedata/cache_data.dart';

class ZZFilterViewModel extends ChangeNotifier{
  bool _isWuGuDanBai = false;
  bool _isContainRuTang = false;
  bool _isNormalVegetable = false;
  bool _isSuperVegetable = false;

  static final String kWuGuDanBai = "_isWuGuDanBai";
  static final String kContainRuTang = "_isContainRuTang";
  static final String kNormalVegetable = "_isNormalVegetable";
  static final String kSuperVegetable = "_isSuperVegetable";

  bool get isWuGuDanBai {
    ZZCacheData.getCache(kWuGuDanBai).then((value) {
      _isWuGuDanBai = value;
      notifyListeners();
    });
    return _isWuGuDanBai;
  }
  set isWuGuDanBai(bool value) {
    _isWuGuDanBai = value;
    ZZCacheData.cache(kWuGuDanBai, value);
    notifyListeners();
  }

  bool get isContainRuTang {
    ZZCacheData.getCache(kContainRuTang).then((value) {
      _isContainRuTang = value;
      notifyListeners();
    });
    return _isContainRuTang;
  }
  set isContainRuTang(bool value) {
    _isContainRuTang = value;
    ZZCacheData.cache(kContainRuTang, value);
    notifyListeners();
  }

  bool get isNormalVegetable {
    ZZCacheData.getCache(kNormalVegetable).then((value) {
      _isNormalVegetable = value;
      notifyListeners();
    });
    return _isNormalVegetable;
  }
  set isNormalVegetable(bool value) {
    _isNormalVegetable = value;
    ZZCacheData.cache(kNormalVegetable, value);
    notifyListeners();
  }

  bool get isSuperVegetable {
    ZZCacheData.getCache(kSuperVegetable).then((value) {
      _isSuperVegetable = value;
      notifyListeners();
    });
    return _isSuperVegetable;
  }
  set isSuperVegetable(bool value) {
    _isSuperVegetable = value;
    ZZCacheData.cache(kSuperVegetable, value);
    notifyListeners();
  }
}