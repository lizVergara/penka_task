/* ******************************************* */
/*              DECLARATION OF ENUMS           */
/* ******************************************* */

enum Role { USER, ADMIN, SUPERUSER, DEVELOPER }

enum Status { CARGANDO, ERROR, ACTUALIZACION, OFFLINE }

enum TipoRUC {
  SOCIEDADES,
  EMPRESASPUBLICAS,
  PERSONANATURAL_EXTRANJEROSRESIDENTES
}

enum Provider { SIBERIAN, HERCULES }

enum Cantidad { INCREMENTO, DECREMENTO }

enum Ambiente { PRODUCCION, QA, LOCAL }

enum Comercio { EATS, MISC, MARKET, OTROS_COMERCIOS }

enum Documento { CEDULA, RUC, PASAPORTE }

enum Identificacion { CEDULA, PASAPORTE }

enum SnackTipo { ERROR, EXITO, ALERTA, LOADING }

enum TipoEnvio {
  INMEDIATA,
  SIN_APUROS,
  PROGRAMADA,
  SA_SELECTED,
  PG_SELECTED,
}

enum ErrorTipo { SERVIDOR, CONEXION, APP }

enum TipoEstado { ESPERA, ACTIVO, COMPLETADO, CANCELADO }

enum TipoImagen {
  ICONO,
  BANNER,
  CIRCULAR,
  PRINCIPAL,
  RECTANGULO_VERTICAL,
  RECTANGULO_HORIZONTAL,
}

enum TipoCliente {
  VIP,
  TODOS,
  NORMAL,
  LATEBUY,
  MAMA_VIP,
  RECUPERADO,
  PRIMERA_COMPRA,
  SEGUNDA_COMPRA,
  TERCERA_COMPRA,
}

enum TipoUsuario { EMAIL, TELEFONO, FACEBOOK, GOOGLE, APPLE }

enum TipoProducto { SIMPLE, COMPUESTO }

enum TipoFavorito { PRODUCTO, EMPRESA }

enum TipoDireccion { CASA, OFICINA }

enum TipoTrasporte { MOTO, CARRO, CAMION, PICKUP, FURGONETA }

enum TipoPromocion { PORCENTAJE, MONTO, PRECIOS_BAJOS, FREE_SHIPPING }

enum EstiloProducto {
  ESTILO1,
  ESTILO2,
  ESTILO3,
  ESTILO4,
  ESTILO5,
  ESTILO6,
  ESTILO7,
  ESTILO8
}

enum TipoEasyCredito { DISPONIBLE, UTILIZADO, EXPIRADO }

enum InScreenAlgoritm { FIRST_INDEX, MAX_QUANTITY }

enum EstadoTransaccion { EXITO, ERROR, ESPERA, PROCESANDO }

enum TipoTab { CATEGORIAS, CATEGORIA, TIENDA }

/* ******************************************* */
/*          END OF DECLARATION OF ENUMS        */
/* ******************************************* */

//*

/* ******************************************* */
/*                    GETTERS                  */
/* ******************************************* */

Role roleFromString(String char) {
  switch (char) {
    case 'C':
      return Role.USER;
    case 'AD':
      return Role.ADMIN;
    case 'SA':
      return Role.SUPERUSER;
    case 'D':
      return Role.DEVELOPER;
    default:
      return Role.USER;
  }
}

TipoPromocion? promocionFromSymbol(String symbol) {
  switch (symbol) {
    case '\$':
      return TipoPromocion.MONTO;
    case '%':
      return TipoPromocion.PORCENTAJE;
    default:
      return null;
  }
}

TipoPromocion? promocionFromString(String code) {
  switch (code) {
    case '01':
      return TipoPromocion.PORCENTAJE;
    case '02':
      return TipoPromocion.MONTO;
    case '03':
      return TipoPromocion.FREE_SHIPPING;
    case '04':
      return TipoPromocion.PRECIOS_BAJOS;
    default:
      return null;
  }
}

TipoUsuario usurioFromString(String usuario) {
  switch (usuario) {
    case '1':
      return TipoUsuario.EMAIL;
    case '2':
      return TipoUsuario.TELEFONO;
    case '3':
      return TipoUsuario.FACEBOOK;
    case '4':
      return TipoUsuario.GOOGLE;
    case '5':
      return TipoUsuario.APPLE;
    default:
      return TipoUsuario.EMAIL;
  }
}

TipoCliente clienteFromString(String cliente) {
  switch (cliente) {
    case 'CVIP':
      return TipoCliente.VIP;
    case 'ALL':
      return TipoCliente.TODOS;
    case 'NORMAL':
      return TipoCliente.NORMAL;
    case 'CLATEBUY':
      return TipoCliente.LATEBUY;
    case 'CMAMAVIP':
      return TipoCliente.MAMA_VIP;
    case 'CRECUPERADO':
      return TipoCliente.RECUPERADO;
    case '1ERCOMPRA':
      return TipoCliente.PRIMERA_COMPRA;
    case '2DACOMPRA':
      return TipoCliente.SEGUNDA_COMPRA;
    case '3ERCOMPRA':
      return TipoCliente.TERCERA_COMPRA;
    default:
      return TipoCliente.NORMAL;
  }
}

TipoTrasporte vehiculoFromString(String vehiculo) {
  switch (vehiculo) {
    case 'moto':
      return TipoTrasporte.MOTO;
    case 'carro':
      return TipoTrasporte.CARRO;
    case 'camion':
      return TipoTrasporte.CAMION;
    case 'pickup':
      return TipoTrasporte.PICKUP;
    case 'furgoneta':
      return TipoTrasporte.FURGONETA;
    default:
      return TipoTrasporte.MOTO;
  }
}

EstiloProducto estiloFromInt(int estilo) {
  switch (estilo) {
    case 1:
      return EstiloProducto.ESTILO1;
    case 2:
      return EstiloProducto.ESTILO2;
    case 3:
      return EstiloProducto.ESTILO3;
    case 4:
      return EstiloProducto.ESTILO4;
    case 5:
      return EstiloProducto.ESTILO5;
    case 6:
      return EstiloProducto.ESTILO6;
    case 7:
      return EstiloProducto.ESTILO7;
    case 8:
      return EstiloProducto.ESTILO8;
    default:
      return EstiloProducto.ESTILO1;
  }
}

Comercio comercioFromString(String comercio) {
  switch (comercio) {
    case 'EATS':
      return Comercio.EATS;
    case 'MISC':
      return Comercio.MISC;
    case 'MARKET':
      return Comercio.MARKET;
    case 'OTROS_COMERCIOS':
      return Comercio.OTROS_COMERCIOS;
    default:
      return Comercio.MARKET;
  }
}

TipoImagen tipoImagenFromString(String formato) {
  switch (formato) {
    case 'circular':
      return TipoImagen.CIRCULAR;
    case 'rectVertical':
      return TipoImagen.RECTANGULO_VERTICAL;
    case 'rectHorizontal':
      return TipoImagen.RECTANGULO_HORIZONTAL;
    default:
      return TipoImagen.RECTANGULO_HORIZONTAL;
  }
}

Documento documentFromString(String documento) {
  //esta llamada se hace al backend, donde se establece que tipo de identificacion posee
  switch (documento) {
    case 'RC':
      return Documento.RUC;
    case 'C':
      return Documento.CEDULA;
    case 'P':
      return Documento.PASAPORTE;
    default:
      return Documento.CEDULA;
  }
}

TipoProducto? tipoProductoFromString(String code) {
  switch (code) {
    case 'SIM':
      return TipoProducto.SIMPLE;
    case 'COP':
      return TipoProducto.COMPUESTO;
    default:
      return null;
  }
}

TipoEasyCredito? tipoEasyCreditoFromString(String code) {
  switch (code) {
    case 'disponibles':
      return TipoEasyCredito.DISPONIBLE;
    case 'utilizados':
      return TipoEasyCredito.UTILIZADO;
    case 'expirados':
      return TipoEasyCredito.EXPIRADO;
    default:
      return null;
  }
}

TipoTab tipoTabFromString(String char) {
  switch (char) {
    case 'categorias':
      return TipoTab.CATEGORIAS;
    case 'categoria':
      return TipoTab.CATEGORIA;
    case 'tienda':
      return TipoTab.TIENDA;
    default:
      return TipoTab.CATEGORIAS;
  }
}

/* ******************************************* */
/*                END OF GETTERS               */
/* ******************************************* */

//*

/* ******************************************* */
/*                  EXTENSIONS                 */
/* ******************************************* */

extension ComercioExt on Comercio {
  String get code => this.toString().split('.').last;

  String toUXString() {
    switch (this) {
      case Comercio.MISC:
        return 'Ver todo';
      case Comercio.EATS:
        return 'Foodie';
      case Comercio.MARKET:
        return 'Mi Comisariato';
      case Comercio.OTROS_COMERCIOS:
        return 'Plus';
      default:
        return 'No definido';
    }
  }

  String get channel {
    switch (this) {
      case Comercio.MISC:
        return 'M';
      case Comercio.EATS:
        return 'E';
      case Comercio.MARKET:
        return 'M';
      case Comercio.OTROS_COMERCIOS:
        return 'P';
      default:
        return 'undefined';
    }
  }

  bool get isMisc {
    return this == Comercio.MISC;
  }

  bool get isEats {
    return this == Comercio.EATS;
  }

  bool get isPlus {
    return this == Comercio.OTROS_COMERCIOS;
  }

  bool get isMarket {
    return this == Comercio.MARKET;
  }

  bool get isNotMarket {
    return this != Comercio.MARKET;
  }
}

extension PromocionExt on TipoPromocion {
  bool get isValue {
    return this == TipoPromocion.MONTO;
  }

  bool get isPercent {
    return this == TipoPromocion.PORCENTAJE;
  }

  bool get isLowPrices {
    return this == TipoPromocion.PRECIOS_BAJOS;
  }

  bool get isFreeShipping {
    return this == TipoPromocion.FREE_SHIPPING;
  }
}

extension TipoProductoExt on TipoProducto {
  bool get isSimple {
    return this == TipoProducto.SIMPLE;
  }

  bool get isCompound {
    return this == TipoProducto.COMPUESTO;
  }
}

extension FavoritoExt on TipoFavorito {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension TipoEnvioExt on TipoEnvio {
  String get code {
    switch (this) {
      case TipoEnvio.INMEDIATA:
        return "IM";
      case TipoEnvio.SIN_APUROS:
        return "SA";
      case TipoEnvio.PROGRAMADA:
        return "PG";
      default:
        return "IM";
    }
  }

  bool get esProgramada {
    return this == TipoEnvio.PROGRAMADA;
  }

  bool get esSinApuros {
    return this == TipoEnvio.SIN_APUROS;
  }

  bool get programadaSelected {
    return this == TipoEnvio.PG_SELECTED;
  }

  bool get sinApurosSelected {
    return this == TipoEnvio.SA_SELECTED;
  }

  bool get isUnselected {
    return this == TipoEnvio.SA_SELECTED ||
        this == TipoEnvio.PG_SELECTED ||
        this == TipoEnvio.INMEDIATA;
  }

  bool get isSelected {
    return this == TipoEnvio.INMEDIATA;
  }
}

extension TipoEasyCreditoExt on TipoEasyCredito {
  String toUXString() {
    switch (this) {
      case TipoEasyCredito.DISPONIBLE:
        return "Disponibles";
      case TipoEasyCredito.UTILIZADO:
        return "Utilizados";
      case TipoEasyCredito.EXPIRADO:
        return "Expirados";
      default:
        return "";
    }
  }
}

extension DocumentoExt on Documento {
  String toCodeString() {
    switch (this) {
      case Documento.RUC:
        return 'RC';
      case Documento.CEDULA:
        return 'C';
      case Documento.PASAPORTE:
        return 'P';
      default:
        return 'C';
    }
  }

  String formattedID(String id) {
    switch (this) {
      case Documento.CEDULA:
        return "C.I. $id";
        break;
      case Documento.RUC:
        return "RUC $id";
        break;
      case Documento.PASAPORTE:
        return "Pasaporte $id";
        break;
      default:
        return "";
    }
  }
}

extension IdentificacionExt on Identificacion {
  String toCodeString() {
    switch (this) {
      case Identificacion.CEDULA:
        return 'C';
      case Identificacion.PASAPORTE:
        return 'P';
      default:
        return 'C';
    }
  }

  String formattedID(String id) {
    switch (this) {
      case Identificacion.CEDULA:
        return "C.I. $id";
        break;
      case Identificacion.PASAPORTE:
        return "Pasaporte $id";
        break;
      default:
        return "";
    }
  }
}

extension CantidadExt on Cantidad {
  int factor() {
    return this == Cantidad.INCREMENTO ? 1 : -1;
  }
}


/* ******************************************* */
/*              END OF EXTENSIONS              */
/* ******************************************* */
