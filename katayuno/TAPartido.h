//
//  TAPartido.h
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TAJugador.h"

@interface TAPartido : NSObject

@property (nonatomic, retain) TAJugador *jugador1;
@property (nonatomic, retain) TAJugador *jugador2;
@property (nonatomic, retain) TAJugador *ganador;

- (id)initWithJugador:(TAJugador *)jugador1 jugador2:(TAJugador *)jugador2;

-(void)puntua:(TAJugador *)jugador;
-(NSNumber *)puntuacion:(TAJugador *)jugador;
@end