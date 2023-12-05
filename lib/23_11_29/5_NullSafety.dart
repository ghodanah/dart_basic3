void main() {

  String? name;


  String age = '25';

  if(name != null){
    print(name.length);
  } else{
    print('it');
  }

  print(name?.length);


  print(age.length);
}