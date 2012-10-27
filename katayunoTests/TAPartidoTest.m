//
//  TAPartidoTest.m
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//


#import "TAPartidoTest.h"
#import "TAPartido.h"

@interface TAPartidoTest(){
    TAPartido *partido;
    TAJugador *jug1, *jug2;
}

@end

@implementation TAPartidoTest
-(void)setUp{
    jug1 = [TAJugador new];
    jug2 = [TAJugador new];
    
    partido = [[TAPartido alloc] initWithJugador:(TAJugador *)jug1 jugador2:(TAJugador *)jug2];
}

-(void)testTieneQueHaber2Jugadores{
    STAssertNotNil(partido.jugador1, @"Debe haber jugador1");
    STAssertNotNil(partido.jugador2, @"Debe haber jugador2");
}

-(void)testLosDosJugadoresPuntuan{
    [partido puntua:jug1];
    STAssertEqualObjects([partido puntuacion:jug1], @15, @"Puntuación = 15");
}

-(void)testGanadorNulo{
    STAssertNil(partido.ganador, @"No hay ganador");
}

-(void)testGanador{
    [partido puntua:jug1]; // pone a 15
    [partido puntua:jug1]; // pone a 30
    [partido puntua:jug1]; // pone a 40
    [partido puntua:jug1]; // gana
    
    STAssertEqualObjects(partido.ganador, jug1, @"Ha ganado el jug1");
}

-(void)testIguales{
    [partido puntua:jug1]; // pone a 15
    [partido puntua:jug1]; // pone a 30
    [partido puntua:jug1]; // pone a 40

    [partido puntua:jug2]; // pone a 15
    [partido puntua:jug2]; // pone a 30
    [partido puntua:jug2]; // pone a 40

    [partido puntua:jug1];
    
    STAssertNil(partido.ganador, @"No debería haber ganador");
}
-(void)tearDown{
    [partido dealloc];
}
@end