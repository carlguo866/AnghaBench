
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef size_t int8 ;
typedef int float64 ;
struct TYPE_2__ {int low; int high; } ;


 int SETFLOAT64 (int ,int,int) ;
 int float64NumP2 ;
 int float64NumQInfWeightMasks ;
 TYPE_1__* float64P2 ;
 int* float64QInfWeightMasks ;
 int* float64QInfWeightOffsets ;
 int randomUint16 () ;
 int randomUint8 () ;

__attribute__((used)) static float64 float64RandomQInfP3( void )
{
    int8 sigNum1, sigNum2;
    uint32 sig1Low, sig2Low, zLow;
    int8 weightMaskNum;
    float64 z;

    sigNum1 = randomUint8() % float64NumP2;
    sigNum2 = randomUint8() % float64NumP2;
    sig1Low = float64P2[ sigNum1 ].low;
    sig2Low = float64P2[ sigNum2 ].low;
    zLow = sig1Low + sig2Low;
    weightMaskNum = randomUint8() % float64NumQInfWeightMasks;
    SETFLOAT64(
        z,
          ( ( (uint32) ( randomUint8() & 1 ) )<<31 )
        | ( ( ( ( (uint32) ( randomUint16() & 0xFFF ) )<<20 )
                & float64QInfWeightMasks[ weightMaskNum ] )
            + float64QInfWeightOffsets[ weightMaskNum ]
          )
        | ( ( float64P2[ sigNum1 ].high
                + float64P2[ sigNum2 ].high
                + ( zLow < sig1Low )
              )
            & 0x000FFFFF
          ),
        zLow
    );
    return z;

}
