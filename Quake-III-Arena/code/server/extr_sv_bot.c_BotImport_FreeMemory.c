
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Z_Free (void*) ;

void BotImport_FreeMemory(void *ptr) {
 Z_Free(ptr);
}
