ArrayList<Course> courses;
ArrayList<Student> students;

void setup() {
  size(600,600);
  courses = new ArrayList<Course>();
  students = new ArrayList<Student>();
  
}

void draw() {
}


void addStudent(int studentNumber) {
  students.add(new Student(studentNumber));
}

void addCourse(String name) { 
  courses.add(new Course(name));
}

void addExistingStudentToCourse(int studentNumber, String courseName) {
  for (Course c : courses) {
    if (c.name.equals(courseName)) {
      for (Student s : students) {
        if (s.studentNumber == studentNumber) {
          c.courseStudents.add(s);
          s.studentCourses.add(c);
        }
      }
    }
  }
}