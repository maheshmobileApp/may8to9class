void main() {
  final studentDeatils =  getStudentMarks(); // run-time const
  const y = 30; // compli-time const
}

int getStudentMarks() {
  int maths = 50;
  int che = 60;
  int en = 99;

  return maths + che + en;
}
