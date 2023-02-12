class Premierleagueteams {
  String? position;
  String? club;
  String? mp;
  String? w;
  String? d;
  String? l;
  String? pts;
  String? gf;
  String? ga;
  String? gd;
  List? last5;

  Premierleagueteams(
      {this.position,
      this.club,
      this.mp,
      this.w,
      this.d,
      this.l,
      this.pts,
      this.gf,
      this.ga,
      this.gd,
      this.last5});

  Premierleagueteams.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    club = json['club'];
    mp = json['mp'];
    w = json['w'];
    d = json['d'];
    l = json['l'];
    pts = json['pts'];
    gf = json['gf'];
    ga = json['ga'];
    gd = json['gd'];
    last5 = json['last5'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['position'] = position;
    data['club'] = club;
    data['mp'] = mp;
    data['w'] = w;
    data['d'] = d;
    data['l'] = l;
    data['pts'] = pts;
    data['gf'] = gf;
    data['ga'] = ga;
    data['gd'] = gd;
    data['last5'] = last5;
    return data;
  }
}