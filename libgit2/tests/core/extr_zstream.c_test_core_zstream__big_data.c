
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int BIG_STRING_PART ;
 TYPE_1__ GIT_BUF_INIT ;
 int cl_git_pass (int ) ;
 int compress_and_decompress_input_various_ways (TYPE_1__*) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,int ,int ) ;
 scalar_t__ rand () ;
 int srand (int) ;
 int strlen (int ) ;

void test_core_zstream__big_data(void)
{
 git_buf in = GIT_BUF_INIT;
 size_t scan, target;

 for (target = 1024; target <= 1024 * 1024 * 4; target *= 8) {


  git_buf_clear(&in);
  while (in.size < target)
   cl_git_pass(
    git_buf_put(&in, BIG_STRING_PART, strlen(BIG_STRING_PART)));

  compress_and_decompress_input_various_ways(&in);


  srand(0xabad1dea);
  for (scan = 0; scan < in.size; ++scan)
   in.ptr[scan] = (char)rand();

  compress_and_decompress_input_various_ways(&in);
 }

 git_buf_dispose(&in);
}
