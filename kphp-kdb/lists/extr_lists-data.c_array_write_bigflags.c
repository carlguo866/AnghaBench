
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 int metafile_get_flags (int) ;
 int writeout_int (int ) ;

__attribute__((used)) static int array_write_bigflags (listree_t *LT, int temp_id) {
  writeout_int (metafile_get_flags (temp_id));
  return 0;
}
