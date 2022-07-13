class CurrencyHub {
  String? status;
  int? time;
  double? result;
  double? approxResult;

  CurrencyHub({this.status, this.time, this.result, this.approxResult});

  CurrencyHub.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    time = json['time'];
    result = json['result'];
    approxResult = json['approxResult'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['time'] = time;
    data['result'] = result;
    data['approxResult'] = approxResult;
    return data;
  }
}