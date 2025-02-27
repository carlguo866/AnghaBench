
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_chunk {scalar_t__ type; scalar_t__ size; } ;


 scalar_t__ CHUNK_READ_ONLY ;
 scalar_t__ CHUNK_READ_WRITE ;
 int MEMORY_CHUNKS ;
 struct mem_chunk* get_memory_layout () ;
 int kfree (struct mem_chunk*) ;

__attribute__((used)) static int get_mem_chunk_cnt(void)
{
 struct mem_chunk *chunk_array, *mem_chunk;
 int i, cnt = 0;

 chunk_array = get_memory_layout();
 for (i = 0; i < MEMORY_CHUNKS; i++) {
  mem_chunk = &chunk_array[i];
  if (chunk_array[i].type != CHUNK_READ_WRITE &&
      chunk_array[i].type != CHUNK_READ_ONLY)
   continue;
  if (mem_chunk->size == 0)
   continue;
  cnt++;
 }
 kfree(chunk_array);
 return cnt;
}
