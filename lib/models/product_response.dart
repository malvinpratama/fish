// To parse this JSON data, do
//
//     final catalog = catalogFromJson(jsonString);

import 'dart:convert';

Catalog catalogFromJson(String str) => Catalog.fromJson(json.decode(str));

String? catalogToJson(Catalog data) => json.encode(data.toJson());

class Catalog {
  Catalog({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  Data? data;

  factory Catalog.fromJson(Map<String, dynamic> json) => Catalog(
        status: json["status"] ?? null,
        message: json["message"] ?? null,
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}

class Data {
  Data({
    this.currentPage,
    this.product,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Product>? product;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"] == null ? null : json["current_page"],
        product: json["data"] == null
            ? null
            : List<Product>.from(json["data"].map((x) => Product.fromJson(x))),
        firstPageUrl:
            json["first_page_url"] == null ? null : json["first_page_url"],
        from: json["from"] == null ? null : json["from"],
        lastPage: json["last_page"] == null ? null : json["last_page"],
        lastPageUrl:
            json["last_page_url"] == null ? null : json["last_page_url"],
        links: json["links"] == null
            ? null
            : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl:
            json["next_page_url"] == null ? null : json["next_page_url"],
        path: json["path"] == null ? null : json["path"],
        perPage: json["per_page"] == null ? null : int.parse(json["per_page"].toString()),
        prevPageUrl:
            json["prev_page_url"] == null ? null : json["prev_page_url"],
        to: json["to"] == null ? null : json["to"],
        total: json["total"] == null ? null : json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage == null ? null : currentPage,
        "data": product == null
            ? null
            : List<dynamic>.from(product!.map((x) => x.toJson())),
        "first_page_url": firstPageUrl == null ? null : firstPageUrl,
        "from": from == null ? null : from,
        "last_page": lastPage == null ? null : lastPage,
        "last_page_url": lastPageUrl == null ? null : lastPageUrl,
        "links": links == null
            ? null
            : List<dynamic>.from(links!.map((x) => x.toJson())),
        "next_page_url": nextPageUrl == null ? null : nextPageUrl,
        "path": path == null ? null : path,
        "per_page": perPage == null ? null : perPage,
        "prev_page_url": prevPageUrl == null ? null : prevPageUrl,
        "to": to == null ? null : to,
        "total": total == null ? null : total,
      };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"] == null ? null : json["label"],
        active: json["active"] == null ? null : json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label == null ? null : label,
        "active": active == null ? null : active,
      };
}

class Product {
  Product({
    this.id,
    this.name,
    this.description,
    this.priceCoretDefault,
    this.priceCoret,
    this.categoryId,
    this.categoryName,
    this.priceDefault,
    this.price,
    this.priceNumber,
    this.picture1,
    this.picture1Do,
    this.picture1Default,
    this.picture2,
    this.picture2Do,
    this.picture2Default,
    this.picture3,
    this.picture3Do,
    this.picture3Default,
    this.picture4,
    this.picture4Do,
    this.picture4Default,
    this.picture5,
    this.picture5Do,
    this.picture5Default,
    this.pictureArray,
    this.spec,
    this.satuan,
    this.size,
    this.guaranty,
    this.temperature,
    this.prodLocation,
    this.area,
    this.sku,
    this.owner,
    this.typeProdId,
    this.typeProdName,
    this.locationId,
    this.province,
    this.cities,
    this.location,
    this.locationName,
    this.status,
    this.counter,
    this.areaId,
    this.createdAt,
    this.stock,
    this.keterangan,
    this.idWms,
    this.minimumOrder,
  });

  int? id;
  String? name;
  dynamic description;
  dynamic priceCoretDefault;
  String? priceCoret;
  int? categoryId;
  String? categoryName;
  int? priceDefault;
  String? price;
  String? priceNumber;
  String? picture1;
  String? picture1Do;
  String? picture1Default;
  String? picture2;
  String? picture2Do;
  String? picture2Default;
  String? picture3;
  String? picture3Do;
  String? picture3Default;
  String? picture4;
  String? picture4Do;
  String? picture4Default;
  String? picture5;
  String? picture5Do;
  String? picture5Default;
  List<String>? pictureArray;
  dynamic spec;
  String? satuan;
  dynamic size;
  dynamic guaranty;
  dynamic temperature;
  String? prodLocation;
  String? area;
  String? sku;
  dynamic owner;
  int? typeProdId;
  String? typeProdName;
  int? locationId;
  Cities? province;
  Cities? cities;
  Location? location;
  String? locationName;
  String? status;
  int? counter;
  int? areaId;
  DateTime? createdAt;
  Stock? stock;
  dynamic keterangan;
  String? idWms;
  double? minimumOrder;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"],
        priceCoretDefault: json["price_coret_default"],
        priceCoret: json["price_coret"] == null ? null : json["price_coret"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        categoryName:
            json["category_name"] == null ? null : json["category_name"],
        priceDefault:
            json["price_default"] == null ? null : json["price_default"],
        price: json["price"] == null ? null : json["price"],
        priceNumber: json["price_number"] == null ? null : json["price_number"],
        picture1: json["picture_1"] == null ? null : json["picture_1"],
        picture1Do: json["picture_1_do"] == null ? null : json["picture_1_do"],
        picture1Default: json["picture_1_default"] == null
            ? null
            : json["picture_1_default"],
        picture2: json["picture_2"] == null ? null : json["picture_2"],
        picture2Do: json["picture_2_do"] == null ? null : json["picture_2_do"],
        picture2Default: json["picture_2_default"] == null
            ? null
            : json["picture_2_default"],
        picture3: json["picture_3"] == null ? null : json["picture_3"],
        picture3Do: json["picture_3_do"] == null ? null : json["picture_3_do"],
        picture3Default: json["picture_3_default"] == null
            ? null
            : json["picture_3_default"],
        picture4: json["picture_4"] == null ? null : json["picture_4"],
        picture4Do: json["picture_4_do"] == null ? null : json["picture_4_do"],
        picture4Default: json["picture_4_default"] == null
            ? null
            : json["picture_4_default"],
        picture5: json["picture_5"] == null ? null : json["picture_5"],
        picture5Do: json["picture_5_do"] == null ? null : json["picture_5_do"],
        picture5Default: json["picture_5_default"] == null
            ? null
            : json["picture_5_default"],
        pictureArray: json["picture_array"] == null
            ? null
            : List<String>.from(json["picture_array"].map((x) => x)),
        spec: json["spec"],
        satuan: json["satuan"] == null ? null : json["satuan"],
        size: json["size"],
        guaranty: json["guaranty"],
        temperature: json["temperature"],
        prodLocation:
            json["prod_location"] == null ? null : json["prod_location"],
        area: json["area"] == null ? null : json["area"],
        sku: json["sku"] == null ? null : json["sku"],
        owner: json["owner"],
        typeProdId: json["typeProd_id"] == null ? null : json["typeProd_id"],
        typeProdName:
            json["typeProd_name"] == null ? null : json["typeProd_name"],
        locationId: json["location_id"] == null ? null : json["location_id"],
        province:
            json["province"] == null ? null : Cities.fromJson(json["province"]),
        cities: json["cities"] == null ? null : Cities.fromJson(json["cities"]),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        locationName:
            json["location_name"] == null ? null : json["location_name"],
        status: json["status"] == null ? null : json["status"],
        counter: json["counter"] == null ? null : json["counter"],
        areaId: json["area_id"] == null ? null : json["area_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        stock: json["stock"] == null ? null : Stock.fromJson(json["stock"]),
        keterangan: json["keterangan"],
        idWms: json["id_wms"] == null ? null : json["id_wms"],
        minimumOrder: json["minimum_order"] == null
            ? null
            : double.tryParse(json["minimum_order"].toString()),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description,
        "price_coret_default": priceCoretDefault,
        "price_coret": priceCoret == null ? null : priceCoret,
        "category_id": categoryId == null ? null : categoryId,
        "category_name": categoryName == null ? null : categoryName,
        "price_default": priceDefault == null ? null : priceDefault,
        "price": price == null ? null : price,
        "price_number": priceNumber == null ? null : priceNumber,
        "picture_1": picture1 == null ? null : picture1,
        "picture_1_do": picture1Do == null ? null : picture1Do,
        "picture_1_default": picture1Default == null ? null : picture1Default,
        "picture_2": picture2 == null ? null : picture2,
        "picture_2_do": picture2Do == null ? null : picture2Do,
        "picture_2_default": picture2Default == null ? null : picture2Default,
        "picture_3": picture3 == null ? null : picture3,
        "picture_3_do": picture3Do == null ? null : picture3Do,
        "picture_3_default": picture3Default == null ? null : picture3Default,
        "picture_4": picture4 == null ? null : picture4,
        "picture_4_do": picture4Do == null ? null : picture4Do,
        "picture_4_default": picture4Default == null ? null : picture4Default,
        "picture_5": picture5 == null ? null : picture5,
        "picture_5_do": picture5Do == null ? null : picture5Do,
        "picture_5_default": picture5Default == null ? null : picture5Default,
        "picture_array": pictureArray == null
            ? null
            : List<dynamic>.from(pictureArray!.map((x) => x)),
        "spec": spec,
        "satuan": satuan == null ? null : satuan,
        "size": size,
        "guaranty": guaranty,
        "temperature": temperature,
        "prod_location": prodLocation == null ? null : prodLocation,
        "area": area == null ? null : area,
        "sku": sku == null ? null : sku,
        "owner": owner,
        "typeProd_id": typeProdId == null ? null : typeProdId,
        "typeProd_name": typeProdName == null ? null : typeProdName,
        "location_id": locationId == null ? null : locationId,
        "province": province == null ? null : province!.toJson(),
        "cities": cities == null ? null : cities!.toJson(),
        "location": location == null ? null : location!.toJson(),
        "location_name": locationName == null ? null : locationName,
        "status": status == null ? null : status,
        "counter": counter == null ? null : counter,
        "area_id": areaId == null ? null : areaId,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "stock": stock == null ? null : stock!.toJson(),
        "keterangan": keterangan,
        "id_wms": idWms == null ? null : idWms,
        "minimum_order": minimumOrder == null ? null : minimumOrder,
      };
}

class Cities {
  Cities({
    this.id,
    this.provinceId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? provinceId;
  String? name;
  dynamic createdAt;
  dynamic updatedAt;

  factory Cities.fromJson(Map<String, dynamic> json) => Cities(
        id: json["id"] == null ? null : json["id"],
        provinceId: json["province_id"] == null ? null : json["province_id"],
        name: json["name"] == null ? null : json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "province_id": provinceId == null ? null : provinceId,
        "name": name == null ? null : name,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Location {
  Location({
    this.id,
    this.label,
    this.name,
    this.description,
    this.phone,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.long,
    this.lat,
    this.city,
    this.province,
    this.picture,
    this.descIn,
    this.descEn,
  });

  int? id;
  String? label;
  String? name;
  String? description;
  String? phone;
  String? address;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? long;
  String? lat;
  int? city;
  int? province;
  String? picture;
  dynamic descIn;
  dynamic descEn;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"] == null ? null : json["id"],
        label: json["label"] == null ? null : json["label"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        long: json["long"] == null ? null : json["long"],
        lat: json["lat"] == null ? null : json["lat"],
        city: json["city"] == null ? null : json["city"],
        province: json["province"] == null ? null : json["province"],
        picture: json["picture"] == null ? null : json["picture"],
        descIn: json["desc_in"],
        descEn: json["desc_en"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "label": label == null ? null : label,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "long": long == null ? null : long,
        "lat": lat == null ? null : lat,
        "city": city == null ? null : city,
        "province": province == null ? null : province,
        "picture": picture == null ? null : picture,
        "desc_in": descIn,
        "desc_en": descEn,
      };
}

class Stock {
  Stock({
    this.id,
    this.productId,
    this.qty,
    this.createdAt,
    this.updatedAt,
    this.companiesId,
    this.warehouseId,
    this.qtyFloat,
    this.dateStock,
  });

  int? id;
  int? productId;
  dynamic qty;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? companiesId;
  dynamic warehouseId;
  dynamic qtyFloat;
  dynamic dateStock;

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
        id: json["id"] == null ? null : json["id"],
        productId: json["product_id"] == null ? null : json["product_id"],
        qty: json["qty"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        companiesId: json["companies_id"] == null ? null : json["companies_id"],
        warehouseId: json["warehouse_id"],
        qtyFloat: json["qty_float"],
        dateStock: json["date_stock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "product_id": productId == null ? null : productId,
        "qty": qty,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "companies_id": companiesId == null ? null : companiesId,
        "warehouse_id": warehouseId,
        "qty_float": qtyFloat,
        "date_stock": dateStock,
      };
}
