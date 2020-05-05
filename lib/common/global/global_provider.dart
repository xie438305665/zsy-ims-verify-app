import 'dart:convert';

import 'package:zsy/common/global/global_config.dart';
import 'package:zsy/common/net/net_request.dart';
import 'package:zsy/common/utils/sp_util.dart';
import 'package:zsy/common/utils/text_util.dart';
import 'package:zsy/constant.dart';

/// @description: 全局共享状态
/// @author xcl qq:244672784
/// @Date 2020/4/29 21:29
class GlobalProvider {
  // 是否release
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  // 配置相关类
  static GlobalConfig globalConfig = GlobalConfig();

  ///初始化
  static Future init() async {
    var configValue = SpUtil.getString(Constant.SP_CONFIG_KEY, "");
    if (TextUtil.isStringNull(configValue)) {
      SpUtil.putString(Constant.SP_CONFIG_KEY, jsonEncode(globalConfig));
    } else {
      try {
        globalConfig = jsonDecode(configValue);
      } catch (e) {
        print(e);
      }
    }
    NetRequest.init();
  }

  /// 更新GlobalConfig类
  static updateConfig(GlobalConfig config) {
    if (config == null) return;
    SpUtil.putString(Constant.SP_CONFIG_KEY, jsonEncode(config));
  }

  ///释放
  static clear() {
    globalConfig = null;
    SpUtil.clear();
  }
}
