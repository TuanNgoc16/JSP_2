package mvctwo;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;
public class StudentDataUtil {
    public static List<Student> getStudents() {

        List<Student> students = new ArrayList<>();

        students.add(new Student("Tuan","Minh","abc@gmail.com"));
        students.add(new Student("Quan","Anh","abc1@gmail.com"));
        students.add(new Student("Vinh","Duong","abc2@gmail.com"));

        return students;
    }
}
