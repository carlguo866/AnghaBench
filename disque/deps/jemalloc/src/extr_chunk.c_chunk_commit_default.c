
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pages_commit (void*,size_t) ;

__attribute__((used)) static bool
chunk_commit_default(void *chunk, size_t size, size_t offset, size_t length,
    unsigned arena_ind)
{

 return (pages_commit((void *)((uintptr_t)chunk + (uintptr_t)offset),
     length));
}
