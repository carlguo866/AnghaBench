
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_givcrypt_request {int areq; } ;


 int crypto_aead_decrypt (int *) ;

__attribute__((used)) static int aead_null_givdecrypt(struct aead_givcrypt_request *req)
{
 return crypto_aead_decrypt(&req->areq);
}
