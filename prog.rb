class Student
  @@no_of_stu=0

def initialize(name,age,id)
    @name_0f_stu=name
    @age_of_stu=age
    @id_0f_stu=id
  end

def print_details()
    puts "name of the student is #@name_0f_stu"
    puts "age of the student is #@age_of_stu"
    puts "id of the student is #@id_of_stu"
  end

def no_of_student()
    puts "no of students #@@no_of_stu+=1"
  end
end

Stu1=Student.new("Rishabh",19,1505054)
Stu2=Student.new("Subhamoy",20,1505569)

Stu1.print_details()
Stu1.no_of_student()

Stu2.print_details()
Stu2.no_of_student()
