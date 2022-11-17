import 'dart:io';

main()
{

      print('enter the digits number');
      String? values = stdin.readLineSync();
      List<String> lst=values!.split(' ');
      List<int> numbers = lst.map(int.parse).toList();
      if(lst.length==4) {
        int c = numbers[0] * numbers[1] * numbers[2] * numbers[3];
        String digits = c.toString();
        try {
          for (int i = 0; i <= digits.length ; i++) {
            if(i==digits.length-2)
             print(digits.substring(i, digits.length));
          }
        }catch(erorr)
  {
    print(erorr.toString());
  }
      }
      else
            print('please enter four numbers');

}