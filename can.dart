import 'dart:convert';
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
  
  //Creando una constante, tipo json
  final heroeJson = '{"Nombre": "SuperJavi", "Poder": "QuemarWeed"}';
  Map paseJson = json.decode(heroeJson); //Esto es un objeto tipo Map
  print(heroeJson); //JSON sin parse
  print(paseJson); //Se parseo
  final heroe = new Heroe.fromJson(paseJson);
  print(heroe.nombre);
  print(heroe.poder);
  
  //Accediendo al Getter and Setter
  final rombo = Rombo();
  rombo.lado =10;
  rombo._alto = 5;
  print('El area del Rombo es de ${rombo.area}');
  
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
  
  //constructor de Can, Constructor largo
  Can(String color, String raza){
    this.color = color; //propiedades del constructor
    this.raza = raza;
  }
  
  //fx que retorna a Can
  String showCan(){
    return '${this.color} - ${this.raza}';
  }
 
}

//Constructor Con Nombre
class Heroe{
  String nombre;
  String poder;
  
  //Constructor de Heroé, este es un constructor short
  Heroe(this.nombre, this.poder);
  Heroe.fromJson(Map paseJson){ //Este es unconstructor con nombre de tipo Map
    nombre = paseJson['Nombre']; //Ojo con las Mayusculas
    poder  = paseJson['Poder'];
  }
}

//Getters and Setters, con variables private
class Rombo{
  double _lado;
  double _alto;
  
  set lado(double valor){
    if (valor <=0){
      throw('El Lado del Rombo es menor que 0');
    }
    _lado = valor;
  }
  
  //Calculando el area
  double get area{
    return (_lado * _lado);
  }
}

 
  
 
  


