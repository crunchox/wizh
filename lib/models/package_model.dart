class Package {
  final String date;
  final String tripTitle;
  final String requiredNumberOfPerson;
  final String numberOfDayNight;
  final String overallDestinations;
  final String tripTypeCode;
  final String tripPaymentPolicy;
  final String price;
  final String unit;

  Package(
      this.date,
      this.tripTitle,
      this.requiredNumberOfPerson,
      this.numberOfDayNight,
      this.overallDestinations,
      this.tripTypeCode,
      this.tripPaymentPolicy,
      this.price,
      this.unit);

  // Trip.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       email = json['email'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'email': email,
  //     };
}
