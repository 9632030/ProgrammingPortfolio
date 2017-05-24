float grade=random(0, 200);
if (grade>=94) {
  println("Assign letter grade A");
} else if (grade>=89 && grade < 94) {
  println("Assign letter grade A-");
} else if (grade>=87 && grade < 89) {
  println("Assign letter grade B+");
} else if (grade>=83 && grade < 87) {
  println("Assign letter grade B");
} else if (grade>=80 && grade < 83) {
  println("Assign letter grade B-");
} else if (grade>=77 && grade < 80) {
  println("Assign letter grade C+");
} else if (grade>=73 && grade < 77) {
  println("Assign letter grade C");
} else if (grade>=70 && grade < 73) {
  println("Assign letter grade C-");
} else if (grade>=67 && grade < 70) {
  println("Assign letter grade D+");
} else if (grade>=63 && grade < 67) {
  println("Assign letter grade D");
} else if (grade>=60 && grade < 66) {
  println("Assign letter grade D-");  
} else if (grade < 60){
  println("Assign letter grade F"); 
}