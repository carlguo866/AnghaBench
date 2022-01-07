
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct playerState_s {scalar_t__* stats; scalar_t__* persistant; scalar_t__* ammo; scalar_t__* powerups; } ;
typedef struct playerState_s playerState_t ;
struct TYPE_4__ {int offset; int bits; } ;
typedef TYPE_1__ netField_t ;
typedef int msg_t ;
typedef int dummy ;
typedef int byte ;


 int ARRAY_LEN (TYPE_1__*) ;
 int Com_Memset (struct playerState_s*,int ,int) ;
 int FLOAT_INT_BIAS ;
 int FLOAT_INT_BITS ;
 int MAX_PERSISTANT ;
 int MAX_POWERUPS ;
 int MAX_STATS ;
 int MAX_WEAPONS ;
 int MSG_WriteBits (int *,int,int) ;
 int MSG_WriteByte (int *,int) ;
 int MSG_WriteLong (int *,scalar_t__) ;
 int MSG_WriteShort (int *,scalar_t__) ;
 int oldsize ;
 TYPE_1__* playerStateFields ;

void MSG_WriteDeltaPlayerstate( msg_t *msg, struct playerState_s *from, struct playerState_s *to ) {
 int i;
 playerState_t dummy;
 int statsbits;
 int persistantbits;
 int ammobits;
 int powerupbits;
 int numFields;
 netField_t *field;
 int *fromF, *toF;
 float fullFloat;
 int trunc, lc;

 if (!from) {
  from = &dummy;
  Com_Memset (&dummy, 0, sizeof(dummy));
 }

 numFields = ARRAY_LEN( playerStateFields );

 lc = 0;
 for ( i = 0, field = playerStateFields ; i < numFields ; i++, field++ ) {
  fromF = (int *)( (byte *)from + field->offset );
  toF = (int *)( (byte *)to + field->offset );
  if ( *fromF != *toF ) {
   lc = i+1;
  }
 }

 MSG_WriteByte( msg, lc );

 oldsize += numFields - lc;

 for ( i = 0, field = playerStateFields ; i < lc ; i++, field++ ) {
  fromF = (int *)( (byte *)from + field->offset );
  toF = (int *)( (byte *)to + field->offset );

  if ( *fromF == *toF ) {
   MSG_WriteBits( msg, 0, 1 );
   continue;
  }

  MSG_WriteBits( msg, 1, 1 );


  if ( field->bits == 0 ) {

   fullFloat = *(float *)toF;
   trunc = (int)fullFloat;

   if ( trunc == fullFloat && trunc + FLOAT_INT_BIAS >= 0 &&
    trunc + FLOAT_INT_BIAS < ( 1 << FLOAT_INT_BITS ) ) {

    MSG_WriteBits( msg, 0, 1 );
    MSG_WriteBits( msg, trunc + FLOAT_INT_BIAS, FLOAT_INT_BITS );
   } else {

    MSG_WriteBits( msg, 1, 1 );
    MSG_WriteBits( msg, *toF, 32 );
   }
  } else {

   MSG_WriteBits( msg, *toF, field->bits );
  }
 }





 statsbits = 0;
 for (i=0 ; i<MAX_STATS ; i++) {
  if (to->stats[i] != from->stats[i]) {
   statsbits |= 1<<i;
  }
 }
 persistantbits = 0;
 for (i=0 ; i<MAX_PERSISTANT ; i++) {
  if (to->persistant[i] != from->persistant[i]) {
   persistantbits |= 1<<i;
  }
 }
 ammobits = 0;
 for (i=0 ; i<MAX_WEAPONS ; i++) {
  if (to->ammo[i] != from->ammo[i]) {
   ammobits |= 1<<i;
  }
 }
 powerupbits = 0;
 for (i=0 ; i<MAX_POWERUPS ; i++) {
  if (to->powerups[i] != from->powerups[i]) {
   powerupbits |= 1<<i;
  }
 }

 if (!statsbits && !persistantbits && !ammobits && !powerupbits) {
  MSG_WriteBits( msg, 0, 1 );
  oldsize += 4;
  return;
 }
 MSG_WriteBits( msg, 1, 1 );

 if ( statsbits ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, statsbits, MAX_STATS );
  for (i=0 ; i<MAX_STATS ; i++)
   if (statsbits & (1<<i) )
    MSG_WriteShort (msg, to->stats[i]);
 } else {
  MSG_WriteBits( msg, 0, 1 );
 }


 if ( persistantbits ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, persistantbits, MAX_PERSISTANT );
  for (i=0 ; i<MAX_PERSISTANT ; i++)
   if (persistantbits & (1<<i) )
    MSG_WriteLong (msg, to->persistant[i]);
 } else {
  MSG_WriteBits( msg, 0, 1 );
 }


 if ( ammobits ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, ammobits, MAX_WEAPONS );
  for (i=0 ; i<MAX_WEAPONS ; i++)
   if (ammobits & (1<<i) )
    MSG_WriteShort (msg, to->ammo[i]);
 } else {
  MSG_WriteBits( msg, 0, 1 );
 }


 if ( powerupbits ) {
  MSG_WriteBits( msg, 1, 1 );
  MSG_WriteBits( msg, powerupbits, MAX_POWERUPS );
  for (i=0 ; i<MAX_POWERUPS ; i++)
   if (powerupbits & (1<<i) )
    MSG_WriteLong( msg, to->powerups[i] );
 } else {
  MSG_WriteBits( msg, 0, 1 );
 }
}
