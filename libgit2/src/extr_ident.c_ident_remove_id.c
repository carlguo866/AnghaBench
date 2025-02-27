
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 int GIT_PASSTHROUGH ;
 scalar_t__ git_buf_grow (TYPE_1__*,size_t) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_put (TYPE_1__*,char const*,size_t) ;
 int git_buf_set (TYPE_1__*,char const*,size_t) ;
 scalar_t__ ident_find_id (char const**,char const**,char*,int ) ;

__attribute__((used)) static int ident_remove_id(
 git_buf *to, const git_buf *from)
{
 const char *id_start, *id_end, *from_end = from->ptr + from->size;
 size_t need_size;

 if (ident_find_id(&id_start, &id_end, from->ptr, from->size) < 0)
  return GIT_PASSTHROUGH;

 need_size = (size_t)(id_start - from->ptr) +
  4 + (size_t)(from_end - id_end);

 if (git_buf_grow(to, need_size) < 0)
  return -1;

 git_buf_set(to, from->ptr, (size_t)(id_start - from->ptr));
 git_buf_put(to, "$Id$", 4);
 git_buf_put(to, id_end, (size_t)(from_end - id_end));

 return git_buf_oom(to) ? -1 : 0;
}
