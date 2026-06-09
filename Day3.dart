// /*Q1. Create a Car class with:
//     → name, brand, speed properties
//     → Constructor
//     → Method: showDetails()
//     → Create 2 car objects and print details* */
// void main(){
//     Car car1 = Car(name:"Alkazar",brand:"Suzuki",speed:300);
//     Car car2 = Car(name:"Fortuner",brand:"Toyota",speed:280);
//     car1.ShowDetails();
//     car2.ShowDetails();
// }
// class Car {
//     String name ;
//     String brand;
//     int speed;
//     Car({required this.name,required this.brand,required this.speed});
//     void ShowDetails(){
//         print ("Name= ${name}");
//         print ("Brand= ${brand}");
//         print ("Top speed= ${speed}");
//     }
// }

// Q2. Create a BankAccount class with:
//     → owner name, balance properties
//     → Constructor
//     → Method: deposit(amount)
//     → Method: withdraw(amount)
//     → Method: showBalance()
//     → Test with some transactions



// Q3. Create a Student class with:
//     → name, age, marks properties
//     → Constructor
//     → Method: getGrade()
//        (returns A/B/C/Fail based on marks)
//     → Method: showDetails()
//     → Create 3 students and show their grades

    void main(){
        Student student = Student(name:'Suraj',marks:80.0,age:19);
        print(student. showDetails());
        Student student1 = Student(name:'Gourav',marks:60.0,age:15);
        print(student1. showDetails());
        Student student2 = Student(name:'Rishav',marks:40.0,age:18);
        print(student2. showDetails());
    }
    class Student {
        String name;
        int age;
        double marks;
        Student({required this.name,required this.marks,required this . age});
        String getGrade (){
            if (marks >= 80.0) {
                return 'A';
            }else if (marks >=60.0){
                return 'B';
            }
            else{
                return 'Fail';
            }
        }
        ({String Name, int Age,double Marks,String Grade}) showDetails(){
            return (Name: name,Age:age,Grade:getGrade(),Marks:marks);
        }    }