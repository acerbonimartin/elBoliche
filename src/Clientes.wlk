//Personas
object vonLukas {
	var energia=150
	var diversion=70
	var colorRemera="blanco"
	var edad=17
	
	method colorRemera(){
		return colorRemera
	}
	method edad(){
		return edad
	}
	method disminuirEnergia(cantidad){
		energia(energia-cantidad)
	}
	method aumentarEnergia(cantidad){
		energia(energia+cantidad)
	}
	method energia(cantidad){
		energia=energia-cantidad
	}
	method aumentarDiversion(cantidad){
		diversion(diversion+cantidad)
	}
	method disminuirDiversion(cantidad){
		diversion(cantidad-diversion)
	}
	method diversion(cantidad){
		diversion=cantidad
	}
	method estaEnAlgunaPista(){
		return (mainRoom.estaBailarin(self)||panoramaBar.estaBailarin(self)||darkRoom.estaBailarin(self))
	}
}

object bianker {
	var energia=140
	var diversion=80
	var colorRemera="negro"
	var edad=22
	
	method colorRemera(){
		return colorRemera
	}
	method edad(){
		return edad
	}
	method disminuirEnergia(cantidad){
		energia(energia-cantidad)
	}
	method aumentarEnergia(cantidad){
		energia(energia+cantidad)
	}
	method energia(cantidad){
		energia=energia-cantidad
	}
	method aumentarDiversion(cantidad){
		diversion(diversion+cantidad)
	}
	method disminuirDiversion(cantidad){
		diversion(cantidad-diversion)
	}
	method diversion(cantidad){
		diversion=cantidad
	}
	method estaEnAlgunaPista(){
	return (mainRoom.estaBailarin(self)||panoramaBar.estaBailarin(self)||darkRoom.estaBailarin(self))
	}
}
	
object gonzen {
	var energia=90
	var diversion=15
	var colorRemera="negro"
	var edad=33
	
	method colorRemera(){
		return colorRemera
	}
	method edad(){
		return edad
	}
	method disminuirEnergia(cantidad){
		energia(energia-cantidad)
	}
	method aumentarEnergia(cantidad){
		energia(energia+cantidad)
	}
	method energia(cantidad){
		energia=energia-cantidad
	}
	method aumentarDiversion(cantidad){
		diversion(diversion+cantidad)
	}
	method disminuirDiversion(cantidad){
		diversion(cantidad-diversion)
	}
	method diversion(cantidad){
		diversion=cantidad
	}
	method estaEnAlgunaPista(){
		return (mainRoom.estaBailarin(self)||panoramaBar.estaBailarin(self)||darkRoom.estaBailarin(self))
	}
}
	
object berghain{
	var patovaDeTurno=rochensen
	var djDelDia=dixon
	var estanDentro= #{}
	
	method djDelDia(){
		return djDelDia
	}
	method djDelDia(dj){
		djDelDia=dj
	}
	method patovaDeTurno(gorila){
		patovaDeTurno=gorila
	}
	method intentaEntrar(alguien){
		return patovaDeTurno.decideSiPasa(alguien)
	}
}
//Patovas

object rochensen{	
	method decideSiPasa(alguien){
		return alguien.edad()>21
	}
}
object rodrigsen{
	method decideSiPasa(alguien){
		return alguien.colorRemera()=="negro"
		
	}
}
object gustavoTruccensen{
	method decideSiPasa(alguien){
		return false
	}
}

//Pistas
object mainRoom {
	var bailarines= #{vonLukas}
	
	method agregarBailarin(bailarin){
		bailarines.add(bailarin)
	}
	method seBaila(){
		bailarines.map({bailarin =>
			bailarin.disminuirEnergia(40)
			bailarin.aumentarDiversion(30)
		})
	}
	method cuantosBailan(){
		return bailarines.size()
	}
	method estaBailarin(bailarin){
		return bailarines.contains(bailarin)
	}
}
object panoramaBar {
	var bailarines =#{}
	
	method agregarBailarin(bailarin){
		bailarines.add(bailarin)
	}
	method seBaila(){
		berghain.djDelDia().haceBailarA(bailarines)
	}
	method cuantosBailan(){
		return bailarines.size()
	}
	method estaBailarin(bailarin){
		return bailarines.contains(bailarin)
	}
}
object darkRoom{
	var bailarines =#{}
	
	method agregarBailarin(bailarin){
		bailarines.add(bailarin)
	}
	method seBaila(){
		
	}
	method cuantosBailan(){
		return bailarines.size()
	}
	method estaBailarin(bailarin){
		return bailarines.contains(bailarin)
	}
}
//DJs
object dixon {
	method haceBailarA(bailarines){
		bailarines.map({bailarin=> self.baila(bailarin)})
	}
	method baila(bailarin){
		bailarin.disminuyeEnergia(60)
		bailarin.aumentaDiversion(120)
	}
}
object marcelDettmann {
	method haceBailarA(bailarines){
		bailarines.map({bailarin=> self.baila(bailarin)})
	}
	method baila(bailarin){
		bailarin.energia(0)
		bailarin.aumentaDiversion(1000)
	}
}
object tommyMunios {
	method haceBailarA(bailarines){
		bailarines.map({bailarin=> self.baila(bailarin)})
	}
	method baila(bailarin){
		bailarin.disminuyeEnergia(80)
	}
}