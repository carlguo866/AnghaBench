
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int cfd ;
 int close (int ) ;
 int destroy_all_cipher_methods () ;
 int destroy_all_digest_methods () ;

__attribute__((used)) static int devcrypto_unload(ENGINE *e)
{
    destroy_all_cipher_methods();




    close(cfd);

    return 1;
}
