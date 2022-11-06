class Trip {
  final String date;
  final String tripTitle;
  final String numberOfPerson;
  final String numberOfDayNight;
  final String destinations;
  final String tripTypeCode;
  final String tripPaymentPolicy;
  final String paymentStatus;

  Trip(
      this.date,
      this.tripTitle,
      this.numberOfPerson,
      this.numberOfDayNight,
      this.destinations,
      this.tripTypeCode,
      this.tripPaymentPolicy,
      this.paymentStatus);

  // Trip.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       email = json['email'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'email': email,
  //     };
}
