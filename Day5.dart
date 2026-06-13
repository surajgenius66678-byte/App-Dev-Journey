//  Error Handling  , Exception Handling

// void main(){
//     print (10~/3);
//     print (10/0);
//     print (10 ~/0);
//     print('Suraj');// most imp to print
// }

// We can handle error which are exception we want to continue if that statement dont work;
// it does not fix synax erroe


//  Exception handling syntax;(try ,catch)
// void main(){
//     print (10~/3);
//     print (10/0);
//     try {
//     print (10 ~/0);
//     }catch(e){ // "e" represent any error. by dart 
//         print (e);// we have printed error
//         print("some error occured ")// can do anything 
//     }
//     print('Suraj');// most imp to print
// }

// // finally - a keyword use in exception handling when we need to do that work either the error occor or not it is not important.
// void main(){
//     print (10~/3);
//     print (10/0);
//     try {
//     print (10 ~/0);
//     }catch(e){ // "e" represent any error. by dart 
//         print (e);// we have printed error
//         print("some error occured ")// can do anything 
//     }finally{
//         print ('Finally block executed');
//     }
//     print('Suraj');// most imp to print
// }

// we canot use try alone either we need to use.
// catch
// on  "error " catch
// // finally
// void main(){
//     print (10~/3);
//     print (10/0);
//     try {
//     print (10 ~/0);
//     }on IntegerDivisionByZeroException catch(e){ // "e" represent any error. by dart 
//         print (e);// we have printed error
//     }
//     print('Suraj');// most imp to print
// }


// Future:- a class that reprsents a function or computation work in future this produce a result or error 
// it is related to  Asynchronons prog
// void main()async{
//     print ("waitt 2 seconds");
//     final result = await giveAResultAfter2sec();
//         print (result);
// print("hey");
// print("greetings");
// }
// Future <String> giveAResultAfter2sec() {
//     return Future.delayed(Duration(seconds:2),()async{
//         return 'hey!!!';
//     });
// }

// void main(){
//     print ("waitt 2 seconds");
//   giveAResultAfter2sec().then((val){
//     print (val);
//   });
        
// print("hey");
// print("greetings");
// }
// Future <String> giveAResultAfter2sec() {
//     return Future.delayed(Duration(minutes:2),()async{
//         return 'hey!!!';
//     });
// }



// Stream

void main() async{
countdown().listen((val){ 
    print (val);
}.onDone:(){
    print("hey i completed it");
},);
print ("hii");
}
Stream<int> countdown()async*{
    for(int i=5;i>0;i-- ){
        yield i;
        await Future.delayed(Duration(seconds:1));
    }
}