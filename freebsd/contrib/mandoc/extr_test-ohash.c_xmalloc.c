
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* calloc (int,size_t) ;

__attribute__((used)) static void *
xmalloc(size_t sz, void *arg) {
 return calloc(1,sz);
}
