
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* Pal_Mem_realloc (void*,size_t) ;

__attribute__((used)) static void *muoffice_realloc(void *arg, void *old, size_t size)
{
 return Pal_Mem_realloc(old, size);
}
