import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getapi/homescreen/home_api.dart';
import '../model/data_model.dart';

class HomeController extends GetxController {
  List<Surah> datalist = <Surah>[];

  @override
  void onInit() {
    getImageList();
    super.onInit();
  }

  Future<void> getImageList() async {
    Datamodel datamodel = await HomeApi.getData();
    datalist = datamodel.data.surahs;
    update(["userList"]);
  }
}
