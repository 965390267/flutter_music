class Autogenerated {
  String area;
  int id;
  String title;
  String oid;
  String time;
  String href;
  Null tag;
  String address;
  String submittime;
  String site;
  String mainSelector;
  String titleSelector;
  String timeSelector;
  String charset;
  String ddtoken;

  Autogenerated(
      {this.area,
      this.id,
      this.title,
      this.oid,
      this.time,
      this.href,
      this.tag,
      this.address,
      this.submittime,
      this.site,
      this.mainSelector,
      this.titleSelector,
      this.timeSelector,
      this.charset,
      this.ddtoken});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    area = json['area'];
    id = json['id'];
    title = json['title'];
    oid = json['oid'];
    time = json['time'];
    href = json['href'];
    tag = json['tag'];
    address = json['address'];
    submittime = json['submittime'];
    site = json['site'];
    mainSelector = json['MainSelector'];
    titleSelector = json['TitleSelector'];
    timeSelector = json['TimeSelector'];
    charset = json['charset'];
    ddtoken = json['ddtoken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['area'] = this.area;
    data['id'] = this.id;
    data['title'] = this.title;
    data['oid'] = this.oid;
    data['time'] = this.time;
    data['href'] = this.href;
    data['tag'] = this.tag;
    data['address'] = this.address;
    data['submittime'] = this.submittime;
    data['site'] = this.site;
    data['MainSelector'] = this.mainSelector;
    data['TitleSelector'] = this.titleSelector;
    data['TimeSelector'] = this.timeSelector;
    data['charset'] = this.charset;
    data['ddtoken'] = this.ddtoken;
    return data;
  }
}