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
        self.puntuacion = @0;
    }
    return self;
}


-(void)anotarPunto{
    if ([self.puntuacion isEqualToNumber:@0])
        self.puntuacion = @15;
    else if ([self.puntuacion isEqualToNumber:@15])
        self.puntuacion = @30;
    else if ([self.puntuacion isEqualToNumber:@30])
        self.puntuacion = @40;
}
@end