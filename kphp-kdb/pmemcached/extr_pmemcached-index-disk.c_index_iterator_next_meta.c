
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ iterator_metafile_number ;
 scalar_t__ iterator_metafile_position ;
 int metafile_load (scalar_t__) ;
 scalar_t__ metafile_number ;

void index_iterator_next_meta () {
  iterator_metafile_number++;
  iterator_metafile_position = 0;
  if (iterator_metafile_number < metafile_number) {
    metafile_load (iterator_metafile_number);
  }
}
