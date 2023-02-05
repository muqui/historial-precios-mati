// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

class Product {
    Product({
        required this.id,
       // required this.postId,
      //  required this.column1,
      //  required this.authorId,
      //  required this.createdAt,
      //  required this.updatedAt,
      //  required this.rankOrder,
//        required this.column2,
        required this.column3,
    //    required this.column4,
    //    required this.column5,
     //   required this.column6,
    //    required this.column7,
        required this.column8,
        required this.column9,
    });

    String id;
    //String postId;
    //String column1;
   // String authorId;
   // DateTime createdAt;
   // DateTime updatedAt;
   // String rankOrder;
   // String column2;
    String column3;
   // String column4;
   // String column5;
  //  String column6;
 //   String column7;
    String column8;
    String column9;

    factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
      //  postId: json["post_id"],
       // column1: json["column_1"],
       // authorId: json["author_id"],
     //   createdAt: DateTime.parse(json["created_at"]),
     //   updatedAt: DateTime.parse(json["updated_at"]),
      //  rankOrder: json["rank_order"],
      //  column2: json["column_2"],
        column3: json["column_3"],
      //  column4: json["column_4"],
     //   column5: json["column_5"],
      //  column6: json["column_6"],
      //  column7: json["column_7"],
        column8: json["column_8"],
        column9: json["column_9"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
      //  "post_id": postId,
       // "column_1": column1,
      //  "author_id": authorId,
      //  "created_at": createdAt.toIso8601String(),
       // "updated_at": updatedAt.toIso8601String(),
       // "rank_order": rankOrder,
        //"column_2": column2,
        "column_3": column3,
       // "column_4": column4,
     //   "column_5": column5,
     //   "column_6": column6,
      //  "column_7": column7,
        "column_8": column8,
        "column_9": column9,
    };
}
