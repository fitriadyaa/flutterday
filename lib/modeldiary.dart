class ModelDiary {
  final int userId;
  final String feeling;
  final String datepost;
  final String note;
  const ModelDiary({this.userId, this.feeling, this.datepost, this.note});
}

List<ModelDiary> diaries = [
  const ModelDiary(
      userId: 1,
      feeling: "Happy",
      datepost: "2021-11-21 20:18:00",
      note: "Lulus UTBK"),
  const ModelDiary(
      userId: 1,
      feeling: "Sad",
      datepost: "2021-12-04 18:10:00",
      note: "Gagal UTBK"),
];
