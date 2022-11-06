class News {
  final String date;
  final String title;
  final String timeRemark;
  final String author;
  final String link;
  final String imageUrl;

  News(this.date, this.title, this.timeRemark, this.author, this.link,
      this.imageUrl);

  // Trip.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       email = json['email'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'email': email,
  //     };
}
