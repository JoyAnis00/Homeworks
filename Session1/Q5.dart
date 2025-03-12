// What is the difference between var and dynamic in Dart? Provide an example of each
void main (){
  var name = 'Joy'; // نوع المتغير بيتحدد حسب نوع اول قيمه يخدها المتغير  ولا يمكن تغيره
  // name = 15 ; -> erorr 
  dynamic text  = 'Joy';  // يمكن تغيير النوع
  text = 23;  //  مسموح
  text = true;  //  مسموح

  print("var example: $name");
  print("dynamic example: $text ");
}