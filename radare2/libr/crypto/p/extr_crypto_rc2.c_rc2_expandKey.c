
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct rc2_state {int* ekey; } ;


 int BITS ;
 int* PITABLE ;
 int RC2_KEY_SIZE ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static bool rc2_expandKey(struct rc2_state *state, const ut8 *key, int key_len) {
 int i;

 if (key_len < 1 || key_len > 128) {
  return 0;
 }
 memcpy(state->ekey, key, key_len);


  for (i = key_len; i < 128; i++) {
   ((ut8 *)state->ekey)[i] = PITABLE[(((ut8 *)state->ekey)[i - key_len] + ((ut8 *)state->ekey)[i - 1]) & 255];
  }

 int ekey_len = (BITS + 7) >> 3;
 i = 128 - ekey_len;
  ((ut8 *)state->ekey)[i] = PITABLE[((ut8 *)state->ekey)[i] & (255 >> (7 & -BITS))];


  while (i--) {
   ((ut8 *)state->ekey)[i] = PITABLE[((ut8 *)state->ekey)[i + 1] ^ ((ut8 *)state->ekey)[i + ekey_len]];
  }


  for (i = RC2_KEY_SIZE - 1; i >= 0; i--) {
   state->ekey[i] = ((ut8 *)state->ekey)[i * 2] + (((ut8 *)state->ekey)[i * 2 + 1] << 8);
  }

  return 1;
}
