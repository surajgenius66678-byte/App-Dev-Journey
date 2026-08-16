// // Q1. Create variables for:
// //     → Your name
// //     → Your age
// //     → Your CGPA
// //     → Whether you are a student
// //     → Print all of them

// void main (){
//     String name ="suraj";
//     int age=18;
//     int CGPA=7;
//     bool a_student=true;
//     print(name);
//     print(age);
//     print(CGPA);
//     print(a_student);
// }

// // Q2. Create two numbers
//     // → Add, subtract, multiply, divide them
//     // → Print all results

// void main(){
//     int a=10;
//     int b=20;
//     int add=a+b;
//     int subtract=a-b;
//     int multiply=a*b;
//     double divide=b/a;
//     print(add);
//     print(subtract);
//     print(multiply);
//     print(divide);
// }
// // Q3. Take a number and check:
// //     → If positive, negative or zero
// //     → Print accordingly
// void main(){
//     int num=18;
//     if (num<0){
//         print("Negative number");

//     }else if (num>0){
//         print("Positive number");
//     }else{
//         print("zero");
//     }
// }

// // Q4. Take marks as input:
// //     → Above 90 → "A grade"
// //     → Above 75 → "B grade"
// //     → Above 60 → "C grade"
// //     → Below 60 → "Fail"
// void main(){
//     int marks=93;
//     if(marks>90){
//         print("A Grade");
//     }else if(marks>75){
//          print("B Grade");
//     }else if(marks>60){
//          print("C Grade");
//     }else {
//          print("Fail");
//     }
// }

// // Q5. Check if a number is:
// //     → Even or Odd
// void main(){
//     int num= 22;
//     if(num % 2==0){
//         print("even number");
//     }else{
//         print("Odd number");
//     }
// }
// // Q6. Print numbers 1 to 50
// void main(){
//     for(int i =0;i<50;i++){
//         print("${i+1}");
//     }
// }

// // Q7. Print only even numbers
// //     from 1 to 100
// void main(){
//     for(int i =1;i<100;i++){
//         if(i %2  ==0){
//             continue;
//         }else{
//         print("${i+1}");
            
//         }
//     }
// }

// // Q8. Print multiplication table
// //     of any number
// void main(){
//     for(int i = 0;i<10;i++){
//         print("5*${i+1} = ${5*(i+1)}");
//     }
// }

// // Q9. Calculate sum of
// //     numbers from 1 to 100
// void main(){
//     int sum=0;
//     for(int i=1;i<101;i++){
//         sum+=i;
//     }
//     print(sum);
// }

// // Q10. Print this pattern:
// //     *
// //     **
// //     ***
// //     ****
// //     *****
// void main(){
//     for(int i =1;i<6;i++){
//         print("*"*i);
//     }
// }
// // Q11. Make a function that:
// //      → Takes two numbers
// //      → Returns their sum
// void main(){
//     int a= 10;
//     int b=20;
//     int sum=add(a,b);
//     print(sum);
// }
// int add(int a,int b){
//     return a+b;
// }

// // Q12. Make a function that:
// //      → Takes a name
// //      → Prints "Hello [name]!"
// void main(){
//     String name ="suraj";
//     print(func(name));
// }
// String? func(String name) =>"Hello $name";

// // Q13. Make a function that:
// //      → Takes a number
// //      → Returns whether even or odd
// void main(){
//     int n= 20;
//     print(check_Num(n));
// }
// String check_Num(int n){
//     if(n%2==0){
//         return "Even";
//     }else{
//         return "odd";
//     }
// }

// // Q14. Make a function that:
// //      → Takes marks
// //      → Returns grade (A/B/C/Fail)
// void main(){
//     int marks= 80;
//     print (grade(marks));
// }
// String grade(int marks){
//     if (marks>90){
//         return "A grade";
//     } else if (marks>70){
//         return "B grade";
//     }else if (marks>60){
//         return "C grade";
//     }else{return "Fail";}
// }

// // Q15. Make a function that:
// //      → Takes a number
// //      → Prints its multiplication table
// void main(){
//     int num=5;
//     int i=1;
//      multiplication_Table(num,i);
// }
// int multiplication_Table(int num,int i){
//     print("$num*$i=${num*i}");
//     if (i!=10){

//     return multiplication_Table(num,i+1);
//     }
//     return 0;
// }