
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RHash ;


 int R_HASH_MD4 ;
 int R_HASH_SIZE_MD4 ;
 int r_cons_newline () ;
 int r_cons_printf (char*,int const) ;
 int * r_hash_do_md4 (int *,int const*,int) ;
 int r_hash_free (int *) ;
 int * r_hash_new (int,int ) ;

__attribute__((used)) static void handle_md4 (const ut8 *block, int len) {
 int i = 0;
 RHash *ctx = r_hash_new (1, R_HASH_MD4);
 const ut8 *c = r_hash_do_md4 (ctx, block, len);
 for (i=0; i<R_HASH_SIZE_MD4; i++) r_cons_printf ("%02x", c[i]);
 r_cons_newline ();
 r_hash_free (ctx);
}
