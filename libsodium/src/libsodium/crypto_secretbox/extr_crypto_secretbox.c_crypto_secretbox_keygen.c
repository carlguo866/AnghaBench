
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_secretbox_KEYBYTES ;
 int randombytes_buf (unsigned char*,int ) ;

void
crypto_secretbox_keygen(unsigned char k[crypto_secretbox_KEYBYTES])
{
    randombytes_buf(k, crypto_secretbox_KEYBYTES);
}
