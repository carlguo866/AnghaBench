
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hmac_sha1_vector (int const*,size_t,int,int const**,size_t*,int *) ;

int hmac_sha1(const u8 *key, size_t key_len, const u8 *data, size_t data_len,
       u8 *mac)
{
 return hmac_sha1_vector(key, key_len, 1, &data, &data_len, mac);
}
