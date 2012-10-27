//
//  TAJugador.h
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TAJugador : NSObject
    @property (nonatomic, retain) NSNumber *puntuacion;

-(void)anotarPunto;
@end
