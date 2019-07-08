/// 返回年月日年月日，不满2位的高位补0
getFormatTime() {
  var date = DateTime.now();
  String timestamp =
      "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} "
      "${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  print("data time is $timestamp");
  return timestamp;
}
