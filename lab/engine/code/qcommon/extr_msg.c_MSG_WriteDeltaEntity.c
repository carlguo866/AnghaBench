
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct entityState_s {int number; } ;
typedef int qboolean ;
struct TYPE_4__ {int offset; int bits; } ;
typedef TYPE_1__ netField_t ;
typedef int msg_t ;
typedef int byte ;


 int ARRAY_LEN (TYPE_1__*) ;
 int Com_Error (int ,char*,int) ;
 int ERR_FATAL ;
 int FLOAT_INT_BIAS ;
 int FLOAT_INT_BITS ;
 int GENTITYNUM_BITS ;
 int MAX_GENTITIES ;
 int MSG_WriteBits (int *,int,int) ;
 int MSG_WriteByte (int *,int) ;
 int assert (int) ;
 TYPE_1__* entityStateFields ;
 int oldsize ;

void MSG_WriteDeltaEntity( msg_t *msg, struct entityState_s *from, struct entityState_s *to,
         qboolean force ) {
 int i, lc;
 int numFields;
 netField_t *field;
 int trunc;
 float fullFloat;
 int *fromF, *toF;

 numFields = ARRAY_LEN( entityStateFields );





 assert( numFields + 1 == sizeof( *from )/4 );


 if ( to == ((void*)0) ) {
  if ( from == ((void*)0) ) {
   return;
  }
  MSG_WriteBits( msg, from->number, GENTITYNUM_BITS );
  MSG_WriteBits( msg, 1, 1 );
  return;
 }

 if ( to->number < 0 || to->number >= MAX_GENTITIES ) {
  Com_Error (ERR_FATAL, "MSG_WriteDeltaEntity: Bad entity number: %i", to->number );
 }

 lc = 0;

 for ( i = 0, field = entityStateFields ; i < numFields ; i++, field++ ) {
  fromF = (int *)( (byte *)from + field->offset );
  toF = (int *)( (byte *)to + field->offset );
  if ( *fromF != *toF ) {
   lc = i+1;
  }
 }

 if ( lc == 0 ) {

  if ( !force ) {
   return;
  }

  MSG_WriteBits( msg, to->number, GENTITYNUM_BITS );
  MSG_WriteBits( msg, 0, 1 );
  MSG_WriteBits( msg, 0, 1 );
  return;
 }

 MSG_WriteBits( msg, to->number, GENTITYNUM_BITS );
 MSG_WriteBits( msg, 0, 1 );
 MSG_WriteBits( msg, 1, 1 );

 MSG_WriteByte( msg, lc );

 oldsize += numFields;

 for ( i = 0, field = entityStateFields ; i < lc ; i++, field++ ) {
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

   if (fullFloat == 0.0f) {
     MSG_WriteBits( msg, 0, 1 );
     oldsize += FLOAT_INT_BITS;
   } else {
    MSG_WriteBits( msg, 1, 1 );
    if ( trunc == fullFloat && trunc + FLOAT_INT_BIAS >= 0 &&
     trunc + FLOAT_INT_BIAS < ( 1 << FLOAT_INT_BITS ) ) {

     MSG_WriteBits( msg, 0, 1 );
     MSG_WriteBits( msg, trunc + FLOAT_INT_BIAS, FLOAT_INT_BITS );
    } else {

     MSG_WriteBits( msg, 1, 1 );
     MSG_WriteBits( msg, *toF, 32 );
    }
   }
  } else {
   if (*toF == 0) {
    MSG_WriteBits( msg, 0, 1 );
   } else {
    MSG_WriteBits( msg, 1, 1 );

    MSG_WriteBits( msg, *toF, field->bits );
   }
  }
 }
}
