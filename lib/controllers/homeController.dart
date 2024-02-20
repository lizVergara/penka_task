import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penka_task/models/Penka.dart';
import 'package:penka_task/models/Public.dart';
import 'package:penka_task/services/Request.dart';

class HomeController extends GetxController {
  /* ******************************************* */
  /*            DECLARATION OF VARIABLES         */
  /* ******************************************* */

  final RxBool _screenSelect = false.obs;
  RxString _error = ''.obs;
  RxBool _loadingUni = true.obs;
  RxBool _loadingTro = true.obs;
  RxBool _loadingCom = true.obs;
  RxBool _loadingPub = true.obs;

  RxList<TemplatePenkas> unique = <TemplatePenkas>[].obs;
  RxList<TemplatePenkas> tournament = <TemplatePenkas>[].obs;
  RxList<TemplatePenkas> combo = <TemplatePenkas>[].obs;
  RxList<PublicPenka> public = <PublicPenka>[].obs;
  final lenghtOriginal = 0;

  /* ******************************************* */
  /*        END OF DECLARATION OF VARIABLES      */
  /* ******************************************* */

  /* ******************************************* */
  /*               LIFECYCLE METHODS             */
  /* ******************************************* */
  @override
  void onInit() {
    // app.location?.onLoad(onLoadLocation, permanent: true);
    _fetchPublico();
    _fetchUnique();
    _fetchCombo();
    _fetchTournament();
    super.onInit();
  }

  @override
  void onClose() {
    // app.location?.removeLoadCallback(onLoadLocation);
    super.onClose();
  }
  /* ******************************************* */
  /*          END OF LIFECYCLE METHODS           */
  /* ******************************************* */

  /* ******************************************* */
  /*                   GETTERS                   */
  /* ******************************************* */

  bool get screenSelect => _screenSelect.value;
  bool get hasError => _error.value != '';
  bool get isLoadingU => _loadingUni.value;
  bool get isLoadingT => _loadingTro.value;
  bool get isLoadingC => _loadingCom.value;
  bool get isLoadingP => _loadingPub.value;

  /* ******************************************* */
  /*                END OF GETTERS               */
  /* ******************************************* */

  /* ******************************************* */
  /*                   SETTERS                   */
  /* ******************************************* */

  void setScreenSelect(value) => _screenSelect.value = value;
  void _clearError() {
    if (hasError) _error.value = '';
  }

  void _setLoadingU(value) {
    _loadingUni.value = value;
  }

  void _setLoadingT(value) {
    _loadingTro.value = value;
  }

  void _setLoadingC(value) {
    _loadingCom.value = value;
  }
  /* ******************************************* */
  /*                END OF SETTERS               */
  /* ******************************************* */

  /* ******************************************* */
  /*                  FUNCTIONS                  */
  /* ******************************************* */

  /* ******************************************* */
  /*               END OF FUNCTIONS              */
  /* ******************************************* */

  /* ******************************************* */
  /*                CALLS TO APIs                */
  /* ******************************************* */

  Future<void> _fetchUnique() async {
    _clearError();
    _setLoadingU(true);
    unique.clear();
    return Fetch.templates('unique').then((res) {
      unique.assignAll(res);
    }).catchError((error) {
      _error(error is String ? error : error.toString());
    }).whenComplete(() {
      _setLoadingU(false);
    });
  }

  Future<void> _fetchTournament() async {
    _clearError();
    _setLoadingT(true);
    tournament.clear();
    return Fetch.templates('tournament').then((res) {
      tournament.assignAll(res);
    }).catchError((error) {
      _error(error is String ? error : error.toString());
    }).whenComplete(() {
      _setLoadingT(false);
    });
  }

  Future<void> _fetchCombo() async {
    _clearError();
    _setLoadingC(true);
    combo.clear();
    return Fetch.templates('combo').then((res) {
      combo.assignAll(res);
    }).catchError((error) {
      _error(error is String ? error : error.toString());
    }).whenComplete(() {
      _setLoadingC(false);
    });
  }

  Future<void> _fetchPublico() async {
    _clearError();
    _loadingPub(true);
    combo.clear();
    return Fetch.public().then((res) {
      public.assignAll(res);
    }).catchError((error) {
      _error(error is String ? error : error.toString());
    }).whenComplete(() {
      _loadingPub(false);
    });
  }
  /* ******************************************* */
  /*            END OF CALLS TO APIs             */
  /* ******************************************* */
}
