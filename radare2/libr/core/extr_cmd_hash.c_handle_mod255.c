
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;


 int r_cons_printf (char*,int ) ;
 int r_hash_mod255 (int const*,int) ;

__attribute__((used)) static void handle_mod255 (const ut8 *block, int len) {
 r_cons_printf ("%d\n", r_hash_mod255 (block, len));

}
