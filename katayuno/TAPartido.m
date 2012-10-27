//
//  TAPartido.m
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import "TAPartido.h"


@implementation TAPartido

- (id)initWithJugador:(TAJugador *)jugador1 jugador2:(TAJugador *)jugador2{
    self = [super init];
    if (self) {
        self.jugador1 = jugador1;
        self.jugador2 = jugador2;
    }
    return self;
}
-(void)puntua:(TAJugador *)jugador{
    [jugador anotarPunto];
    int difPuntuaciones = jugador.punteroPuntuacion - [[self otroJugador:jugador] punteroPuntuacion];
    if (jugador.punteroPuntuacion > 3 && (difPuntuaciones > 1))
        self.ganador = jugador;
}

-(NSNumber *)puntuacion:(TAJugador *)jugador{
    // Normal
    if (jugador.punteroPuntuacion < 3)
        return jugador.puntuacion;
    // Empate
    else if (jugador.punteroPuntuacion >= 3)
    // Advantage
    
    if (jugador.punteroPuntuacion > )

}

-(TAJugador *)otroJugador:(TAJugador *)jugador{
    return (self.jugador1 == jugador) ? self.jugador2 : self.jugador1;
}

/*
 30 - 30
 30 - 40
 40 - 40 --> deuce
 40 - 40+ -> advantage
 40 - 40 -> deuce
 */
@end