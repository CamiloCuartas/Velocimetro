import UIKit

//Declara la enumeración: Velocidades, sus valores serán de tipo Int.
enum Velocidades : Int
{
    //representa la velocidad 0.
    case Apagado = 0
    //representa una velocidad de 20km por hora.
    case VelocidadBaja = 20
    //representa una velocidad de 50km por hora
    case VelocidadMedia = 50
    //representa una velocidad de 50km por hora.
    case VelocidadAlta = 120
    
    //Además, debes de declarar un inicializador que recibe un velocidad:
    init(velocidadInicial : Velocidades)
    {
        //El inicializador se debe asignar a self el valor de velocidadInicial
        self = velocidadInicial
    }
}

//Declara la clase: Auto
class Auto
{
    //Una variable que sea una instancia de la enumeración Velocidades, llamada: velocidad.
    var velocidad : Velocidades
    
    //init( ), agrega la función inicializadora que crea una instancia de Velocidades: velocidad
    init()
    {
        //debe iniciar en Apagado. Recuerda que la enumeración tiene su función inicializadora.
        velocidad = Velocidades.Apagado
        
        //Itera 20 veces usando un for, llama a la función cambioDeVelocidad e imprime los valores de la tupla en la consola.
        for i in 1..<21
        {
            //variable estatica con el resultado devuelto por la funcioncambioDeVelocidad
            let tupla = self.cambioDeVelocidad()
            
            //impresion del resultado
            print("\(tupla.actual),\(tupla.velocidadEnCadena)")
        }
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        //la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.
        var tupla:(valorActual : Int, valorVelocidadEnCadena : String)
        
        //validamos cual es el enum seleccionado
        switch velocidad.rawValue
        {
        case 0:
            tupla.valorActual = velocidad.self.rawValue
            tupla.valorVelocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        case 20:
            tupla.valorActual = velocidad.self.rawValue
            tupla.valorVelocidadEnCadena = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
        case 50:
            tupla.valorActual = velocidad.self.rawValue
            tupla.valorVelocidadEnCadena = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
        case 120:
            tupla.valorActual = velocidad.self.rawValue
            tupla.valorVelocidadEnCadena = "Velocidad alta"
            velocidad = Velocidades.VelocidadMedia
        default:
            tupla.valorActual = -1
            tupla.valorVelocidadEnCadena = "error"
        }
        
        return (tupla.valorActual,tupla.valorVelocidadEnCadena)
    }
}

var objeto = Auto.init()



