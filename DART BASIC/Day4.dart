// Q1. Create a list of 5 friends names
//     → Print all names
//     → Print first and last name
//     → Add a new friend
//     → Remove one friend
//     → Print total count


// void main (){
//     List <String> names = ['suraj','Kumar','cse'];
//     // print (names);
//     String name ;
//     for(name in names){
//         print (name);
//     }
//     print (names.first);
//     print (names.last);
//     names.add ('krishna');
//     names.remove('cse');
//     print (names.length);
//     names.insert(0,'singh');

//     for(name in names){
//         print (name);
//     }

// // }/

// Q2. Create a list of numbers
//     → Find sum of all numbers
//     → Find largest number
//     → Print only even numbers.

// void main(){
//     List <int> numbers = [10,20,30,40,50,11,23,43,59];
//     int sum =0;
//     for(int num in numbers){
//        sum+=num;  
//     }
//     print (sum);
//     var evenNumber=numbers.where ((num)=>num%2==0).toList();
//     var greatest =numbers.reduce((a,b)=>a>b?a:b);
//     print(evenNumber);
//     print(greatest);
// }

// Q3. Create a map of students and marks:
//     → "Suraj": 85
//     → "Gourav": 72
//     → "Rishav": 90
//     → Print all names and marks
//     → Fi{nd who has highest marks/
// void main(){

// Map <String,int> result ={
//     "suraj":85,
//     "Gourav": 72,
//     "Rishav": 90,
// } ;
// result.forEach((key,value)
// {print ('$key : $value');
// });
// int greatest =result.values.first;
// for(int value in result.values){
//     if (value > greatest) {
//     greatest = value;
//   }
// }
// print (greatest);
// }
// Q4. Create a phonebook map:
//     → Add 3 contacts
//     → Search for a contact
//     → Delete a contact
//     → Print all contacts
// void main()
// {Map <String,int> phoneBook = {
//     'suraj':62345,
//     'mom': 65467,
// };

// phoneBook['papa']=3434534;
// phoneBook['sis']=34534;
// phoneBook['bro']=34534;
// phoneBook.remove('sis');
// phoneBook.forEach((key,value){
//     print('$key : $value');
// });
// }

// Q5. Create two sets of numbers
//     → Find common numbers (intersection)
//     → Find all numbers (union)
//     → Find difference

// void main (){
//     Set <int> set1={10,20,50,70};
//     Set <int> set2={10,20,30,70,80};
//     print (set1.intersection(set2));
//     print (set1.union(set2).toList()..sort()); //cascade operation .sort () returns void which cannot be printed directly so we use ..
//     print (set1.difference(set2));

// }

// // Q6. Create an enum for days of week
// //     → Print current day
// //     → Check if it's weekend or weekday

// void main(){
// final today = Day.sunday;
// print (today.name);
// switch(today){
// // case monday;
// case Day.saturday:
// case Day.sunday:
// print ("today is a weekend");
// break;
// default :
// print ("today is a weekday");

// }
// }
// enum Day{
//     monday, tuesday, wednesday,
//   thursday, friday, saturday, sunday
// }


// Q7. Create enhanced enum for Pizza:
//     → Small, Medium, Large
//     → Each with price property
//     → Print price of each size

// void main(){
// final pizzaSize = Pizza.small;
// final pizzaSize1 = Pizza.medium;
// final pizzaSize2 = Pizza.large;
// print(pizzaSize.price);
// print(pizzaSize1.price);
// print(pizzaSize2.price);
// }

// enum Pizza{
//     small(150),
//     medium (290),
//     large (500);
//     final int price;
//    const Pizza (this.price);
// }
