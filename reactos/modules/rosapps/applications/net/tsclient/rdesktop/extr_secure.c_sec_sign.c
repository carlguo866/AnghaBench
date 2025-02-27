
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int SHA_CTX ;
typedef int MD5_CTX ;


 int MD5_Final (int *,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,int *,int) ;
 int SHA1_Final (int *,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,int *,int) ;
 int buf_out_uint32 (int *,int) ;
 int memcpy (int *,int *,int) ;
 int * pad_54 ;
 int * pad_92 ;

void
sec_sign(uint8 * signature, int siglen, uint8 * session_key, int keylen, uint8 * data, int datalen)
{
 uint8 shasig[20];
 uint8 md5sig[16];
 uint8 lenhdr[4];
 SHA_CTX sha;
 MD5_CTX md5;

 buf_out_uint32(lenhdr, datalen);

 SHA1_Init(&sha);
 SHA1_Update(&sha, session_key, keylen);
 SHA1_Update(&sha, pad_54, 40);
 SHA1_Update(&sha, lenhdr, 4);
 SHA1_Update(&sha, data, datalen);
 SHA1_Final(shasig, &sha);

 MD5_Init(&md5);
 MD5_Update(&md5, session_key, keylen);
 MD5_Update(&md5, pad_92, 48);
 MD5_Update(&md5, shasig, 20);
 MD5_Final(md5sig, &md5);

 memcpy(signature, md5sig, siglen);
}
