package dsa.grupo1.tema4.JDBC;
//Clase donde se ubica el listado de declaraciones de funciones

public interface StudentDao {
 
   public Student getStudent(String key);
   public boolean deleteStudent(Student key);
}
