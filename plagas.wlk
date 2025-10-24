class Plaga{
    var poblacion
    method poblacion() = poblacion
    method transmiteEnfermedades() = poblacion >= 10
    method atacarA(unElemento){
        unElemento.recibirAtaque(self)
        self.efectosDeAtacar()
    }
    method efectosDeAtacar() {
      poblacion *= 1.1
    }
}

class Cucarachas inherits Plaga{
    var pesoPromedioBicho
    method nivelDeDanio() = poblacion * 0.5
    override method transmiteEnfermedades() {
      return super() && pesoPromedioBicho >= 10
    }
    override method efectosDeAtacar(){
        super()
        pesoPromedioBicho += 2
    }
}
class Pulgas inherits Plaga{
    method nivelDeDanio() = poblacion * 2
}
class Garrapatas inherits Pulgas{
    override method efectosDeAtacar(){
        poblacion *= 1.2
    }
}
class Mosquitos inherits Plaga{
    method nivelDeDanio() = poblacion
    override method transmiteEnfermedades() {
      return super() && poblacion % 3 == 0
    }
}