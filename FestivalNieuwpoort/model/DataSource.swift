//
//  DataSource.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation

class DataSource{
    
     var items:[Artist]
    
    
    init(){
        items = [Artist]()
        items.append(Artist.init(artist: "Real Big Fish", date: "8/02/2020", time: "20h00", stage: "Lobster", description: "Lorem Ipsum is slechts een proeftekst uit het drukkerij- en zetterijwezen. Lorem Ipsum is de standaard proeftekst in deze bedrijfstak sinds de 16e eeuw, toen een onbekende drukker een zethaak met letters nam en ze door elkaar husselde om een font-catalogus te maken. Het heeft niet alleen vijf eeuwen overleefd maar is ook, vrijwel onveranderd, overgenomen in elektronische letterzetting. Het is in de jaren '60 populair geworden met de introductie van Letraset vellen met Lorem Ipsum passages en meer recentelijk door desktop publishing software zoals Aldus PageMaker die versies van Lorem Ipsum bevatten."))
               
        items.append(Artist.init(artist: "Swashbukle", date: "7/02/2020", time: "21h00", stage: "Swordfish", description: "Het is al geruime tijd een bekend gegeven dat een lezer, tijdens het bekijken van de layout van een pagina, afgeleid wordt door de tekstuele inhoud. Het belangrijke punt van het gebruik van Lorem Ipsum is dat het uit een min of meer normale verdeling van letters bestaat, in tegenstelling tot Hier uw tekst, hier uw tekst wat het tot min of meer leesbaar nederlands maakt. Veel desktop publishing pakketten en web pagina editors gebruiken tegenwoordig Lorem Ipsum als hun standaard model tekst, en een zoekopdracht naar lorem ipsum ontsluit vee websites die nog in aanbouw zijn. Verscheidene versies hebben zich ontwikkeld in de loop van de jaren, soms per ongeluk soms expres."))
               
        items.append(Artist.init(artist: "Admiral Freebie", date: "9/02/2020", time: "19h00", stage: "Shrimps", description: "In tegenstelling tot wat algemeen aangenomen wordt is Lorem Ipsum niet zomaar willekeurige tekst. het heeft zijn wortels in een stuk klassieke latijnse literatuur uit 45 v.Chr. en is dus meer dan 2000 jaar oud. Richard McClintock, een professor latijn aan de Hampden-Sydney College in Virginia, heeft één van de meer obscure latijnse woorden, consectetur, uit een Lorem Ipsum passage opgezocht, en heeft tijdens het zoeken naar het woord in de klassieke literatuur de onverdachte bron ontdekt. Lorem Ipsum komt uit de secties 1.10.32 en 1.10.33 van de Finibus Bonorum et Malorum (De uitersten van goed en kwaad) door Cicero, geschreven in 45 v.Chr. Dit boek is een verhandeling over de theorie der ethiek, erg populair tijdens de renaissance. De eerste regel van Lorem Ipsum, Lorem ipsum dolor sit amet.., komt uit een zin in sectie 1.10.32."))
        
    }
    
    
    
}
