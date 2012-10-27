//
//  TAJugador.h
//  katayuno
//
//  Created by Jorge Maroto García on 27/10/12.
//  Copyright (c) 2012 Jorge Maroto García. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TAJugador : NSObject{
    NSArray *puntuaciones;
}

@property (nonatomic, readonly) int punteroPuntuacion;
-(void)anotarPunto;
-(NSNumber *)puntuacion;
@end
