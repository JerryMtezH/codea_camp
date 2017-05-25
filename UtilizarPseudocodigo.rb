students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]

def best_students(students)
  best_students = []
  x, y        = 0, 0

   while y < students.length
    current_student  = students[y][x]

    if current_student[1] == 10
      best_students.push(current_student[0])
    end

    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    end
  end
  best_students
end 

p best_students(students) == ["Deborah","D'angelo","Theodora","Hilma","Lina"]

=begin

START

  Given the following list of student groups with their respective grades:

   [

     [["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],

     [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
    
     [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
   
     [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]

   ]

  - Create an empty array to contain the list of "Excellent Students"

  - Create and initialize in zeros two variables of work ("Group of Students" and "Student
    And Qualification ") necessary to contain and use the index when processing the list of
    Groups of students as well as the pair of elements "student" and "grades".

  - WHILE the "Student Group" index is less than the number of groups on the list.

      - SET and create a new two element array with the first pair of elements "Student"
        and "grade" of the first group of students processed.

      - IF the grade equals 10

          - THEN In the list of "Excellent Students" add at the end the name of the
            Student (Contained in the pair of two elements setted before)

      - IF the number of "Student and Grade" processed is equal to the total of Students with
        Their respective grades equals the total students in the group processed.

          - THEN initialize in zeros the index to contain the pair of "student"
            and "grade". 
            (In order to processing the next group)

          - ELSE, Increased by 1 the index to contain the pair of "student" and "grade" 
            (In order to processing the next pair of items)

    ENDWHILE LOOP.

  - Return the list of "Excellent Students"

END
=end