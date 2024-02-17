import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  /* ******************************************* */
  /*            DECLARATION OF VARIABLES         */
  /* ******************************************* */

  late Map<String, String?> lastParamsDetalleMarket;
  Map<String, String>? lastParamsPasilloMarket;
  RxBool _carritoPrincipal = false.obs;

  // late GetStorage box;
  MenuController? _menu;
  // OrdersController? _orders;
  // SocketController? _socket;
  // AppBarController? _appBar;
  // PasilloArguments? lastPasilloArguments;
  // late BuscadorArguments lastBuscadorArguments;
  // UsuarioController? _user;
  // CarritoController? _cart;
  // FavoritosController? _favorite;
  // DireccionController? _location;
  // DescuentosController? _discounts;
  // PasilloController? _pasillo;
  // TabsEAController? _tabsEats;
  // TabsPlusController? _tabsPlus;
  // late EstadoPedidoController lastEstadoPedidoController;
  // late DetalleProductoArguments lastDetalleProductoArgument;
  // late Producto lastProducto;

  /* ******************************************* */
  /*        END OF DECLARATION OF VARIABLES      */
  /* ******************************************* */

  //*

  /* ******************************************* */
  /*               LIFECYCLE METHODS             */
  /* ******************************************* */

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // box = GetStorage();
    // initUser();
    // initAppBar();
    // initLocation();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /* ******************************************* */
  /*          END OF LIFECYCLE METHODS           */
  /* ******************************************* */

  /* ******************************************* */
  /*                   GETTERS                   */
  /* ******************************************* */

  // MenuController? get menu {
  //   if (_menu == null || _menu!.isClosed) initMenu();
  //   return _menu;
  // }

  bool get carritoPrincipal => _carritoPrincipal.value;

  /* ******************************************* */
  /*                END OF GETTERS               */
  /* ******************************************* */

  //*

  /* ******************************************* */
  /*                  FUNCTIONS                  */
  /* ******************************************* */

  // void initUser() {
  //   _user = Get.put(UsuarioController(this), tag: "APP", permanent: true);
  // }

  void initMenu() {
    _menu = Get.put(MenuController(), tag: "APP", permanent: true);
  }

  // void initOrders() {
  //   _orders = Get.put(OrdersController(), tag: "APP", permanent: true);
  // }

  // void initAppBar() {
  //   _appBar = Get.put(AppBarController(), tag: "APP", permanent: true);
  // }

  set carritoPrincipal(bool value) => _carritoPrincipal.value = value;

  void removeMenu() {
    Get.delete<MenuController>(tag: "APP", force: true);
  }

  /* ******************************************* */
  /*               END OF FUNCTIONS              */
  /* ******************************************* */
}
