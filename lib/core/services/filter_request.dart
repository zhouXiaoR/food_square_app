import 'package:food_square_app/core/models/filter_model.dart';

class ZZFilterRequest {
  static List<ZZFilterModel> getFilterModels() {
    List<ZZFilterModel> models = [];
    models.add(ZZFilterModel("无谷蛋白", "展示无谷食物", false));
    models.add(ZZFilterModel("不包含乳糖", "不包含乳糖", false));
    models.add(ZZFilterModel("普通素食主义", "普通素食主义", false));
    models.add(ZZFilterModel("超级素食者", "超级素食者", false));
    return models;
  }
}