import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:penka_task/controllers/appController.dart';

class APPRoute {
  final AppController controller;

  static const String SPLASH = "/";
  static const String PRESENTACION = "/presentacion";
  static const String MISC_HOME = "/misc/home";
  static const String EATS_HOME = "/eats/home";
  static const String EATS_TABS = "/eats/tabs";
  static const String EATS_PRODUCTO = "/eats/producto";
  static const String EATS_CATEGORIA = "/eats/categoria";
  static const String EATS_CATEGORIAS = "/eats/categorias";
  static const String EATS_RESTAURANT = "/eats/restaurante";
  static const String PLUS_HOME = "/plus/home";
  static const String PLUS_TABS = "/plus/tabs";
  static const String PLUS_TIENDA = "/plus/tienda";
  static const String PLUS_PRODUCTO = "/plus/producto";
  static const String PLUS_CATEGORIA = "/plus/categoria";
  static const String PLUS_CATEGORIAS = "/plus/categorias";
  static const String MARKET_HOME = "/market/home";
  static const String MARKET_PRODUCTO = "/market/producto";
  static const String MARKET_HISTORIAL = "/market/historial";
  static const String MARKET_CATEGORIA = "/market/categoria";
  static const String MARKET_CATEGORIAS = "/market/categorias";
  static const String CHECKOUT_STEP1 = "/checkout/step1";
  static const String CHECKOUT_STEP2 = "/checkout/step2";
  static const String CHECKOUT_STEP3 = "/checkout/step3";
  static const String CHECKOUT_PROPINA = "/checkout/propina";
  static const String CHECKOUT_DETAILS = "/checkout/detalles";
  static const String UBICACION_BUSQUEDA = "/ubicacion/busqueda";
  static const String UBICACION_SELECCION = "/ubicacion/seleccion";
  static const String UBICACION_CONFIRMACION = "/ubicacion/confirmar";
  static const String USUARIO_AYUDA = "/usuario/ayuda";
  static const String USUARIO_LISTA = "/usuario/listas/detalle";
  static const String USUARIO_LISTAS = "/usuario/listas";
  static const String USUARIO_CUENTA = "/usuario/detalle";
  static const String USUARIO_EDITAR = "/usuario/modificar";
  static const String USUARIO_INVITAR = "/usuario/invitar";
  static const String USUARIO_CREDITOS = "/usuario/creditos";
  static const String USUARIO_TARJETAS = "/usuario/tarjetas";
  static const String USUARIO_FAVORITOS = "/usuario/favoritos";
  static const String USUARIO_DIRECCION = "/usuario/direccion/detalles";
  static const String USUARIO_ACERCA_DE = "/usuario/acercade";
  static const String USUARIO_COMPRA_DET = "/usuario/compras/detalle";
  static const String USUARIO_FACTURACION = "/usuario/facturacion";
  static const String USUARIO_DIRECCIONES = "/usuario/direcciones";
  static const String USUARIO_PEDIDOS_ANT = "/usuario/pedidos/anteriores";
  static const String USUARIO_PEDIDOS_ACT = "/usuario/pedidos/en-curso";
  static const String USUARIO_PEDIDOS_REP = "/usuario/pedidos/repartidor";
  static const String USUARIO_PEDIDOS_DET = "/usuario/pedidos/detalle";
  static const String USUARIO_PASSWORD_CHG = "/usuario/password/cambio";
  static const String USUARIO_PASSWORD_RCV = "/usuario/password/recuperar";
  static const String USUARIO_PASSWORD_SCF =
      "/usuario/password/recuperar/exito";
  static const String USUARIO_TARJETA_AGREGAR = "/usuario/tarjetas/nueva";
  static const String USUARIO_FACTURACION_DETALLE =
      "/usuario/facturacion/detalle";
  static const String LOGIN_EMAIL = "/login/email";
  static const String LOGIN_APPLE = "/login/appleID";
  static const String LOGIN_VALIDAR = "/login/validar-datos";
  static const String LOGIN_OPCIONES = "/login/opciones";
  static const String LOGIN_TELEFONO = "/login/telefono";
  static const String LOGIN_TELEFONO2 = "/login/telefono2";
  static const String LOGIN_RECUPERAR = "/login/recuperar-password";
  static const String REGISTRO_TELEFONO = "/registro/telefono";
  static const String BUSCADOR = "/buscador";
  static const String BUSCADOR_RESULTS = "/buscador/resultados";
  static const String PHONE_NOT_FOUND = "/numero-no-encontrado";
  static const String PRIME_INFO = "/prime/info";
  static const String PRIME_CHECKOUT = "/prime/checkout";

  List<GetPage> list = [
    // GetPage(name: SPLASH, page: () => Splash()),
    // GetPage(name: PRESENTACION, page: () => Presentacion()),
    // GetPage(name: MISC_HOME, page: () => HomeMisc()),
    // GetPage(name: EATS_HOME, page: () => HomeEats()),
  ];

  APPRoute(this.controller);

  static String get _currentRoute => Get.currentRoute.contains("?")
      ? Get.currentRoute.split("?")[0]
      : Get.currentRoute;
}
