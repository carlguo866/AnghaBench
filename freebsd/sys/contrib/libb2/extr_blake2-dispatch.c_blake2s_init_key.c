
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blake2s_state ;


 int blake2s_init_key_ptr (int *,size_t,void const*,size_t) ;

int blake2s_init_key( blake2s_state *S, size_t outlen, const void *key, size_t keylen )
{
  return blake2s_init_key_ptr( S, outlen, key, keylen );
}
