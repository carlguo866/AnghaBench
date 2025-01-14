
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOC_GROW (unsigned int*,int,int ) ;
 int MOVE_ARRAY (unsigned int*,unsigned int*,int) ;
 int done_pbase_path_pos (unsigned int) ;
 unsigned int* done_pbase_paths ;
 int done_pbase_paths_alloc ;
 int done_pbase_paths_num ;

__attribute__((used)) static int check_pbase_path(unsigned hash)
{
 int pos = done_pbase_path_pos(hash);
 if (0 <= pos)
  return 1;
 pos = -pos - 1;
 ALLOC_GROW(done_pbase_paths,
     done_pbase_paths_num + 1,
     done_pbase_paths_alloc);
 done_pbase_paths_num++;
 if (pos < done_pbase_paths_num)
  MOVE_ARRAY(done_pbase_paths + pos + 1, done_pbase_paths + pos,
      done_pbase_paths_num - pos - 1);
 done_pbase_paths[pos] = hash;
 return 0;
}
