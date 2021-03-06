/// @description: 请求地址
/// @author xcl qq:244672784
/// @Date 2020/5/5 15:23
class NetUrl {
  //testing 环境
  static const BASE_TESTING_URL = "";

  //dev环境
  static const BASE_DEV_URL = "http://zsyapi.dev.xueping.com/coachio/iointerface_v2/";

  //正式环境
  static const BASE_RELEASE_URL = "";

  //登录
  static const LOGIN = "login";

  //获取产品信息
  static const GET_PRODUCT_DETAIL = "getProductDetail";

  //上传签名
  static const SAVE_SIGN_DATA = "saveSignData";

  //版本检测/升级
  static const UPGRADE_APP = "getversion";
}
