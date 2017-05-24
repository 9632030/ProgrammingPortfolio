int rand= int(random(0, 10));

println(rand);

switch(rand) {
  case 9:
    println("Letter grade is A");
    break;
  case 8:
    println("Letter grade is B");
    break;
  case 7:
    println("Letter grade is C");
    break;
  case 6:
    println("Letter grade is D");
    break;
  default:
    println("letter grade is F");
    break;
}