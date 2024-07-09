class Student {
  Student({required this.name, required this.age, required this.courses});
  final int age;
  final List<Course> courses;
  final String name;

  void enroll(Course course) {
    if (!courses.contains(course)) {
      courses.add(course);
      course.addStudent(this);
    }
  }

  void drop(Course course) {
    if (courses.contains(course)) {
      courses.remove(course);
      course.removeStudent(this);
    }
  }

  List<String> getEnrolledCourse() {
    // Mengembalikan daftar nama mata kuliah
    return courses.map((course) => course.courseName).toList();
  }
}

class Course {
  final String courseName;
  final Teacher teacher;
  final List<Student> students;
  Course(
      {required this.courseName,
      required this.teacher,
      required this.students});

  void addStudent(Student student) {
    if (!students.contains(student)) {
      students.add(student);
    }
  }

  void removeStudent(Student student) {
    if (students.contains(student)) {
      students.remove(student);
    }
  }

  List<String> getStudentNames() {
    return students.map((student) => student.name).toList();
  }
}

class Teacher {
  final String name;
  final String subject;
  final List<Course> courses;

  Teacher({required this.name, required this.subject, required this.courses});

  void addCourse(Course course) {
    if (!courses.contains(course)) {
      courses.add(course);
    }
  }

  void removeCourse(Course course) {
    if (courses.contains(course)) {
      courses.remove(course);
    }
  }

  List<String> getCourseName() {
    return courses.map((course) => course.courseName).toList();
  }
}

void main() {
  // Membuat objek Teacher
  var teacher = Teacher(name: "Mr. Smith", subject: "Math", courses: []);

  // Membuat objek Course dan menambahkannya ke teacher
  var course = Course(courseName: "Math 101", teacher: teacher, students: []);
  var course2 =
      Course(courseName: "Programming 101", teacher: teacher, students: []);
  teacher.addCourse(course);
  teacher.addCourse(course2);
  teacher.removeCourse(course);
  // Membuat objek Student
  var student1 = Student(name: "John Doe", age: 20, courses: []);
  var student2 = Student(name: "Jane Doe", age: 22, courses: []);

  // Mendaftarkan student1 ke course
  student1.enroll(course);
  print(
      "${student1.name} telah mengambil mata kuliah: ${student1.getEnrolledCourse()}");
  print(
      "Siswa dalam mata kuliah ${course.courseName}: ${course.getStudentNames()}");

  // Mendaftarkan student2 ke course
  student2.enroll(course);
  print(
      "${student2.name} telah mengambil mata kuliah: ${student2.getEnrolledCourse()}");
  print(
      "Siswa dalam mata kuliah ${course.courseName}: ${course.getStudentNames()}");

  // Membatalkan pendaftaran student1 dari course
  student1.drop(course);
  print(
      "${student1.name} telah membatalkan mata kuliah: ${student1.getEnrolledCourse()}");
  print(
      "Siswa dalam mata kuliah ${course.courseName}: ${course.getStudentNames()}");

  // Menampilkan mata kuliah yang diajar oleh teacher
  print(
      "Mata kuliah yang diajar oleh ${teacher.name}: ${teacher.getCourseName()}");
}
