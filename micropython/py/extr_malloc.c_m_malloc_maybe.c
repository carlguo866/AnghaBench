
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_printf (char*,size_t,void*) ;
 size_t MP_STATE_MEM (int ) ;
 int UPDATE_PEAK () ;
 int current_bytes_allocated ;
 void* malloc (size_t) ;
 int total_bytes_allocated ;

void *m_malloc_maybe(size_t num_bytes) {
    void *ptr = malloc(num_bytes);





    DEBUG_printf("malloc %d : %p\n", num_bytes, ptr);
    return ptr;
}
