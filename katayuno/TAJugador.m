//
//  TAJugador.m
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import "TAJugador.h"

@implementation TAJugador

- (id)init{
    self = [super init];
    if (self) {
        _punteroPuntuacion = 0;
        puntuaciones = @[@0, @15, @30, @40];
    }
    return self;
}


-(void)anotarPunto{
        _punteroPuntuacion++;
}

-(NSNumber *)puntuacion{
    return puntuaciones[_punteroPuntuacion];
}
@end