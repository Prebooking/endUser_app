class popularHotelModel {
  String? hotelId;
  String? hotelImage;
  String? rating;
  String? hotelAddress;
  String? hotelName;
  String? hotelCategory;

  popularHotelModel(
      {this.hotelId,
      this.hotelImage,
      this.rating,
      this.hotelAddress,
      this.hotelName,
      this.hotelCategory});

  popularHotelModel.fromJson(Map<String, dynamic> json) {
    hotelId = json['hotel_id'];
    hotelImage = json['hotel_image'];
    rating = json['rating'];
    hotelAddress = json['hotel_address'];
    hotelName = json['hotel_name'];
    hotelCategory = json['hotel_category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hotel_id'] = this.hotelId;
    data['hotel_image'] = this.hotelImage;
    data['rating'] = this.rating;
    data['hotel_address'] = this.hotelAddress;
    data['hotel_name'] = this.hotelName;
    data['hotel_category'] = this.hotelCategory;
    return data;
  }
}
