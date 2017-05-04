//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person{
    
    private var vorname : String
    private var nachname : String
    
    init(vorname : String, nachname : String) {
        self.vorname = vorname
        self.nachname = nachname
    }
    
    func getVorname() -> String{
        return self.vorname
    }
    
    func getNachName() -> String{
        return self.nachname
    }
    
    func toString() -> String{
        return self.getVorname() + " " + self.getNachName()
    }
    
    func printPerson(){
        print(self.getVorname() + " " + self.getNachName())
    }
}

class Spieler : Person {
    
    private var trikoNr : Int
    private var position : Position
    
    init(vorname : String, nachname : String , trikoNr : Int, position : Position) {

        self.trikoNr = trikoNr
        self.position = position
        
        super.init(vorname : vorname, nachname : nachname)
        

    }
    
    func getTrikoNr() -> Int{
        return self.trikoNr
    }
    
    func getPosition() -> Position {
        return self.position
    }
    
    func printSpieler() {
        print("Nr. " + String(self.trikoNr) + ", " + super.toString() + ", Position: " + self.getPosition().rawValue)
    }
}

enum Position : String {
    
    case Sturm = "Sturm"
    case Mittelfeld = "Mittelfeld"
    case Abwehr = "Abwehr"
    case Tor = "Tor"
}

class Mannschaft{

    var name : String
    var torwart : Spieler
    var feldSpieler : [Spieler]
    var tabellenPlatz : Int
    
    init(name : String, torwart : Spieler , feldSpieler : [Spieler] , tabellenPlatz : Int) {
        
        self.name = name
        self.torwart = torwart
        self.feldSpieler = feldSpieler
        self.tabellenPlatz = tabellenPlatz
    }
    
    func getName() -> String{
    return self.name;
    }
    
    func gewinntSpielt() -> Bool{
        if(arc4random_uniform(2) == 0){
            print(self.getName() + " hat das Spiel gewonnen!")
            return true
        }
        print(self.getName() + " hat das Spiel verloren!")
        return false
    }
    
    func printMannschaft() {
        print(self.getName())
        torwart.printSpieler()
        
        for spieler in feldSpieler {
            spieler.printSpieler()
        }
        print("Tabellenplatz: " + String(tabellenPlatz))
    }
}

var towart = Spieler(vorname : "Manuel", nachname :  "Neuer", trikoNr :  1, position : Position.Tor)

var feld = [Spieler(vorname: "Sepp", nachname: "Mayer", trikoNr: 5, position: Position.Mittelfeld)]
feld.append(Spieler(vorname: "Thomas", nachname: "Müller", trikoNr: 7, position: Position.Mittelfeld))
feld.append(Spieler(vorname: "Gerd", nachname: "Müller", trikoNr: 3, position: Position.Sturm))

var bayern = Mannschaft(name: "Bayern", torwart: towart, feldSpieler: feld, tabellenPlatz: 5)

bayern.printMannschaft()
bayern.gewinntSpielt()
