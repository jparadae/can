void main(){
  var nombre = 'Luna';
  print('Hello $nombre!');
  
  //tipo de dato Map
  Map <int, String> perros = {
    1: 'Chow Chow',
    2: 'Pequines',
    3: 'San Bernardo'
  };
  
  print(perros[1]);
  perros.addAll({4:'Bulterrier'});
  print(perros);
  
  //Imprimiendo la fx de Amo_dog y pasando argumentos a la  fx
  String datos_amo = amo_dog('Javiera Parada');
  print('El nombre del amo del Perro es ' + datos_amo);
  //Imprimiendo la fx saludo de return =>
  String saludo_jp = saludo('Pepona');
  print('Hello Saludo por Flecha ' +saludo_jp);
  
  //Creando una nueva instancia de la clase Can, ahora no se us el new
  final can = Can('Rojo', 'Labrador'); //con final nunca cambia su valor, pero si se pueden cambiar sus propiedades
  print(can.showCan()); //Mostrando la fx ShowCan
  
}

//nueva funcion para Dart
String amo_dog(nombre){
  return nombre;
}
//Fx de Flecha
String saludo(String nombre)=>nombre;

//Clases en Dart

class Can{
  String color;
  String raza; 
  
  //constructor de Can
  Can(String color, String raza){
    this.color = color; //propiedades del constructor
    this.raza = raza;
  }
  
  //fx que retorna a Can
  String showCan(){
    return '${this.color} - ${this.raza}';
  }
 
}
