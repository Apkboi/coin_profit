
void main() {


    double amount = 20000;

    for(int months =1;months<= 3;months++){

      amount = amount - (amount*10/100);
      if( months == 3){
      print(amount);
      }
    }


}



//   var alphabets = ['a', 'b', 'c', 'd'];
//   int total = 0;
//   for (int i = 0; i <= s.length; i++) {
//     String character = s.substring(2,3);
//     s.substring(i);
//     print(character);
//     // int value = alphabets.indexOf(character) + 1;
//     // print(value);
//
//
//     // print(s.length.toString()+ 'lengh');
//     // total = total + value;
//     // // print(value);
//     // if (i == s.length) {
//     //   print(total);
//     // }
//   }
//   // return total;
// }
//
// solve('atb');