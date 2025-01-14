
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int buf_out_uint32 (int *,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ pad_54 ;
 scalar_t__ pad_92 ;
 int rdssl_md5_clear (void*) ;
 int rdssl_md5_complete (void*,char*) ;
 void* rdssl_md5_info_create () ;
 int rdssl_md5_info_delete (void*) ;
 int rdssl_md5_transform (void*,char*,int) ;
 int rdssl_sha1_clear (void*) ;
 int rdssl_sha1_complete (void*,char*) ;
 void* rdssl_sha1_info_create () ;
 int rdssl_sha1_info_delete (void*) ;
 int rdssl_sha1_transform (void*,char*,int) ;

void
sec_sign(uint8 * signature, int siglen, uint8 * session_key, int keylen, uint8 * data, int datalen)
{
 uint8 shasig[20];
 uint8 md5sig[16];
 uint8 lenhdr[4];
 void * sha;
 void * md5;

 buf_out_uint32(lenhdr, datalen);

 sha = rdssl_sha1_info_create();
 rdssl_sha1_clear(sha);
    rdssl_sha1_transform(sha, (char *)session_key, keylen);
 rdssl_sha1_transform(sha, (char *)pad_54, 40);
 rdssl_sha1_transform(sha, (char *)lenhdr, 4);
 rdssl_sha1_transform(sha, (char *)data, datalen);
 rdssl_sha1_complete(sha, (char *)shasig);
 rdssl_sha1_info_delete(sha);

 md5 = rdssl_md5_info_create();
 rdssl_md5_clear(md5);
    rdssl_md5_transform(md5, (char *)session_key, keylen);
 rdssl_md5_transform(md5, (char *)pad_92, 48);
 rdssl_md5_transform(md5, (char *)shasig, 20);
 rdssl_md5_complete(md5, (char *)md5sig);
 rdssl_md5_info_delete(md5);

 memcpy(signature, md5sig, siglen);
}
