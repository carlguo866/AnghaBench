
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int engine_table_cleanup (int *) ;
 int rsa_table ;

__attribute__((used)) static void engine_unregister_all_RSA(void)
{
    engine_table_cleanup(&rsa_table);
}
