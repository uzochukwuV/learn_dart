void main(List<String> args) {
  var caveman = Man(4, true, 'empty', 'striong');
  print(caveman.toJson());

  var jsonMan = {'brain': 4, 'great': true, 'head': 'empty', 'leg': 'striong'};
  var json = Man.fromJson(jsonMan);
  print(json.leg);
}

class Man {
  final head;
  final leg;
  final brain;
  final great;

  Man(this.brain, this.great, this.head, this.leg);

  factory Man.fromJson(dynamic user) {
    return Man(user['brain'], user['great'], user['head'], user['leg']);
  }

  toJson() {
    return {'brain': brain, 'great': great, 'head': head, 'leg': leg};
  }
}
