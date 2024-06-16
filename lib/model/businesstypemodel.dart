class BusinesPost {
  String businesname;
  String keyfeature;
  // List image;
  String image;
  String description;
  String? id;
  String type;
  String phonenumber;
  String uid;

  BusinesPost({
    required this.businesname,
    required this.keyfeature,
    required this.image,
    required this.description,
    this.id,
    required this.type,
    required this.phonenumber,
    required this.uid,
  });

  Map<String, dynamic> toJsone(idd) => {
        'businessname': businesname,
        'keyfeature': keyfeature,
        'image': image,
        'description': description,
        'id': idd,
        'type': type,
        'phonenumber': phonenumber,
        'uid':uid
      };

  factory BusinesPost.fromjsone(Map<String, dynamic> jsone) {
    return BusinesPost(
      businesname: jsone['businessname'],
      keyfeature: jsone['keyfeature'],
      image: jsone['image'],
      description: jsone['description'],
      id: jsone['id'],
      type: jsone['type'],
      phonenumber: jsone['phonenumber'],
      uid: jsone['uid'],
    );
  }
}
