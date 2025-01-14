
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md ;
typedef int expected ;
typedef int buf ;
typedef int SHA_CTX ;
typedef int RC4_KEY ;


 int RC4 (int *,int,unsigned char*,unsigned char*) ;
 int RC4_set_key (int *,int ,int *) ;
 int SHA1_Final (unsigned char*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,unsigned char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 int ** keys ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int test_rc_bulk(void)
{
    RC4_KEY key;
    unsigned char buf[513];
    SHA_CTX c;
    unsigned char md[SHA_DIGEST_LENGTH];
    int i;
    static unsigned char expected[] = {
        0xa4, 0x7b, 0xcc, 0x00, 0x3d, 0xd0, 0xbd, 0xe1, 0xac, 0x5f,
        0x12, 0x1e, 0x45, 0xbc, 0xfb, 0x1a, 0xa1, 0xf2, 0x7f, 0xc5
    };

    RC4_set_key(&key, keys[0][0], &(keys[3][1]));
    memset(buf, 0, sizeof(buf));
    SHA1_Init(&c);
    for (i = 0; i < 2571; i++) {
        RC4(&key, sizeof(buf), buf, buf);
        SHA1_Update(&c, buf, sizeof(buf));
    }
    SHA1_Final(md, &c);

    return TEST_mem_eq(md, sizeof(md), expected, sizeof(expected));
}
