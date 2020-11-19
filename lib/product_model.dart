class AllProduct {
  String status;
  String message;
  List<Data> data;

  AllProduct({this.status, this.message, this.data});

  AllProduct.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String name;
  String slug;
  String deliveryCharge;
  String featureImage;
  Null warrantyPeriod;
  Null warrantyPolicy;
  Null highlights;
  String description;
  String featureImageResized;
  String thumbFeatureImage;
  String shortDescription;
  Null additionalDeliveryCharge;
  String status;
  String deliverySizeId;
  String rating;
  String bestSeller;
  String digitalSheba;
  bool isWishlisted;
  int originalPrice;
  List<Variants> variants;
  Seller seller;
  SubCategory subCategory;

  Data(
      {this.name,
      this.slug,
      this.deliveryCharge,
      this.featureImage,
      this.warrantyPeriod,
      this.warrantyPolicy,
      this.highlights,
      this.description,
      this.featureImageResized,
      this.thumbFeatureImage,
      this.shortDescription,
      this.additionalDeliveryCharge,
      this.status,
      this.deliverySizeId,
      this.rating,
      this.bestSeller,
      this.digitalSheba,
      this.isWishlisted,
      this.originalPrice,
      this.variants,
      this.seller,
      this.subCategory});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    deliveryCharge = json['delivery_charge'];
    featureImage = json['feature_image'];
    warrantyPeriod = json['warranty_period'];
    warrantyPolicy = json['warranty_policy'];
    highlights = json['highlights'];
    description = json['description'];
    featureImageResized = json['feature_image_resized'];
    thumbFeatureImage = json['thumb_feature_image'];
    shortDescription = json['short_description'];
    additionalDeliveryCharge = json['additional_delivery_charge'];
    status = json['status'];
    deliverySizeId = json['delivery_size_id'];
    rating = json['rating'];
    bestSeller = json['best_seller'];
    digitalSheba = json['digital_sheba'];
    isWishlisted = json['isWishlisted'];
    originalPrice = json['original_price'];
    if (json['variants'] != null) {
      variants = new List<Variants>();
      json['variants'].forEach((v) {
        variants.add(new Variants.fromJson(v));
      });
    }
    seller =
        json['seller'] != null ? new Seller.fromJson(json['seller']) : null;
    subCategory = json['sub_category'] != null
        ? new SubCategory.fromJson(json['sub_category'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['delivery_charge'] = this.deliveryCharge;
    data['feature_image'] = this.featureImage;
    data['warranty_period'] = this.warrantyPeriod;
    data['warranty_policy'] = this.warrantyPolicy;
    data['highlights'] = this.highlights;
    data['description'] = this.description;
    data['feature_image_resized'] = this.featureImageResized;
    data['thumb_feature_image'] = this.thumbFeatureImage;
    data['short_description'] = this.shortDescription;
    data['additional_delivery_charge'] = this.additionalDeliveryCharge;
    data['status'] = this.status;
    data['delivery_size_id'] = this.deliverySizeId;
    data['rating'] = this.rating;
    data['best_seller'] = this.bestSeller;
    data['digital_sheba'] = this.digitalSheba;
    data['isWishlisted'] = this.isWishlisted;
    data['original_price'] = this.originalPrice;
    if (this.variants != null) {
      data['variants'] = this.variants.map((v) => v.toJson()).toList();
    }
    if (this.seller != null) {
      data['seller'] = this.seller.toJson();
    }
    if (this.subCategory != null) {
      data['sub_category'] = this.subCategory.toJson();
    }
    return data;
  }
}


// class PhotoList {
//   List<Data> photos;
//   PhotoList({this.photos});

//   factory PhotoList.fromJson(List<dynamic> jsonParsed) {
//      List<Data> photoss = new List<Data>();
//      photoss = jsonParsed.map((i) => Data.fromJson(i)).toList();





//     return PhotoList(photos: photoss);
//   }
// }



class Variants {
  Null colorId;
  Null sizeId;
  String sku;
  String qty;
  int price;
  Null salePrice;
  Null mrp;
  Null image;
  Null imageResized;
  Null saleStartDay;
  Null saleEndDay;

  Variants(
      {this.colorId,
      this.sizeId,
      this.sku,
      this.qty,
      this.price,
      this.salePrice,
      this.mrp,
      this.image,
      this.imageResized,
      this.saleStartDay,
      this.saleEndDay});

  Variants.fromJson(Map<String, dynamic> json) {
    colorId = json['color_id'];
    sizeId = json['size_id'];
    sku = json['sku'];
    qty = json['qty'];
    price = json['price'];
    salePrice = json['sale_price'];
    mrp = json['mrp'];
    image = json['image'];
    imageResized = json['image_resized'];
    saleStartDay = json['sale_start_day'];
    saleEndDay = json['sale_end_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color_id'] = this.colorId;
    data['size_id'] = this.sizeId;
    data['sku'] = this.sku;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['sale_price'] = this.salePrice;
    data['mrp'] = this.mrp;
    data['image'] = this.image;
    data['image_resized'] = this.imageResized;
    data['sale_start_day'] = this.saleStartDay;
    data['sale_end_day'] = this.saleEndDay;
    return data;
  }
}

class Seller {
  String name;
  String email;
  Null number;
  String type;
  String status;
  String image;
  String deliveryCharge;
  String shopName;
  Null emailVerifiedAt;
  Null deletedAt;
  String charge;
  String isCommissionBasedOnProduct;
  String commission;
  String commissionType;
  String createdAt;
  String updatedAt;
  String mobile;
  String otp;
  String slug;
  String isPremium;
  Null premiumOrder;
  String isAnazmallSeller;
  String anazmallOrder;

  Seller(
      {this.name,
      this.email,
      this.number,
      this.type,
      this.status,
      this.image,
      this.deliveryCharge,
      this.shopName,
      this.emailVerifiedAt,
      this.deletedAt,
      this.charge,
      this.isCommissionBasedOnProduct,
      this.commission,
      this.commissionType,
      this.createdAt,
      this.updatedAt,
      this.mobile,
      this.otp,
      this.slug,
      this.isPremium,
      this.premiumOrder,
      this.isAnazmallSeller,
      this.anazmallOrder});

  Seller.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    number = json['number'];
    type = json['type'];
    status = json['status'];
    image = json['image'];
    deliveryCharge = json['delivery_charge'];
    shopName = json['shop_name'];
    emailVerifiedAt = json['email_verified_at'];
    deletedAt = json['deleted_at'];
    charge = json['charge'];
    isCommissionBasedOnProduct = json['is_commission_based_on_product'];
    commission = json['commission'];
    commissionType = json['commission_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    mobile = json['mobile'];
    otp = json['otp'];
    slug = json['slug'];
    isPremium = json['is_premium'];
    premiumOrder = json['premium_order'];
    isAnazmallSeller = json['is_anazmall_seller'];
    anazmallOrder = json['anazmall_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['number'] = this.number;
    data['type'] = this.type;
    data['status'] = this.status;
    data['image'] = this.image;
    data['delivery_charge'] = this.deliveryCharge;
    data['shop_name'] = this.shopName;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['deleted_at'] = this.deletedAt;
    data['charge'] = this.charge;
    data['is_commission_based_on_product'] = this.isCommissionBasedOnProduct;
    data['commission'] = this.commission;
    data['commission_type'] = this.commissionType;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['mobile'] = this.mobile;
    data['otp'] = this.otp;
    data['slug'] = this.slug;
    data['is_premium'] = this.isPremium;
    data['premium_order'] = this.premiumOrder;
    data['is_anazmall_seller'] = this.isAnazmallSeller;
    data['anazmall_order'] = this.anazmallOrder;
    return data;
  }
}

class SubCategory {
  int id;
  String categoryId;
  String name;
  String image;
  String slug;
  String createdAt;
  String updatedAt;
  String vat;
  String commission;
  String deliveryCharge;

  SubCategory(
      {this.id,
      this.categoryId,
      this.name,
      this.image,
      this.slug,
      this.createdAt,
      this.updatedAt,
      this.vat,
      this.commission,
      this.deliveryCharge});

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    image = json['image'];
    slug = json['slug'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    vat = json['vat'];
    commission = json['commission'];
    deliveryCharge = json['delivery_charge'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['slug'] = this.slug;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['vat'] = this.vat;
    data['commission'] = this.commission;
    data['delivery_charge'] = this.deliveryCharge;
    return data;
  }
}
