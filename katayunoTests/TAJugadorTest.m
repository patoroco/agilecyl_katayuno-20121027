//
//  TAJugadorTest.m
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import "TAJugadorTest.h"
#import "TAJugador.h"

@implementation TAJugadorTest
- (void)testPuntuacionInicial{
    TAJugador *jugador = [TAJugador new];
    STAssertEqualObjects(jugador.puntuacion, @0, @"Debe tener puntuación inicial a 0");
    [jugador release];
}


- (void)testSumarPuntuacion{
    TAJugador *jugador = [TAJugador new];
    [jugador anotarPunto];
    STAssertEqualObjects(jugador.puntuacion, @15, @"Una vez que se marca un punto son 15");
    
    [jugador anotarPunto];
    STAssertEqualObjects(jugador.puntuacion, @30, @"Una vez que se marca un punto son 30");
    
    [jugador anotarPunto];
    STAssertEqualObjects(jugador.puntuacion, @40, @"Una vez que se marca un punto son 40");
    
    [jugador release];
}

@end