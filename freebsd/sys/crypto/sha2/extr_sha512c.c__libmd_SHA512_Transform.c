
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MSCH (scalar_t__*,int,int) ;
 int RNDr (scalar_t__*,scalar_t__*,int,int) ;
 int SHA512_BLOCK_LENGTH ;
 int SHA512_DIGEST_LENGTH ;
 int be64dec_vect (scalar_t__*,unsigned char const*,int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static void
SHA512_Transform(uint64_t * state, const unsigned char block[SHA512_BLOCK_LENGTH])
{
 uint64_t W[80];
 uint64_t S[8];
 int i;


 be64dec_vect(W, block, SHA512_BLOCK_LENGTH);


 memcpy(S, state, SHA512_DIGEST_LENGTH);


 for (i = 0; i < 80; i += 16) {
  RNDr(S, W, 0, i);
  RNDr(S, W, 1, i);
  RNDr(S, W, 2, i);
  RNDr(S, W, 3, i);
  RNDr(S, W, 4, i);
  RNDr(S, W, 5, i);
  RNDr(S, W, 6, i);
  RNDr(S, W, 7, i);
  RNDr(S, W, 8, i);
  RNDr(S, W, 9, i);
  RNDr(S, W, 10, i);
  RNDr(S, W, 11, i);
  RNDr(S, W, 12, i);
  RNDr(S, W, 13, i);
  RNDr(S, W, 14, i);
  RNDr(S, W, 15, i);

  if (i == 64)
   break;
  MSCH(W, 0, i);
  MSCH(W, 1, i);
  MSCH(W, 2, i);
  MSCH(W, 3, i);
  MSCH(W, 4, i);
  MSCH(W, 5, i);
  MSCH(W, 6, i);
  MSCH(W, 7, i);
  MSCH(W, 8, i);
  MSCH(W, 9, i);
  MSCH(W, 10, i);
  MSCH(W, 11, i);
  MSCH(W, 12, i);
  MSCH(W, 13, i);
  MSCH(W, 14, i);
  MSCH(W, 15, i);
 }


 for (i = 0; i < 8; i++)
  state[i] += S[i];
}
