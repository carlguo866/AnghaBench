
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
struct map_event_t {scalar_t__ addr; scalar_t__ is_to; scalar_t__ id; } ;



__attribute__((used)) static int _cmp_map_event(const void *a_, const void *b_) {
 struct map_event_t *a = (void *)a_, *b = (void *)b_;
 ut64 addr0 = a->addr - a->is_to, addr1 = b->addr - b->is_to;
 if (addr0 != addr1) {
  return addr0 < addr1? -1: 1;
 }
 if (a->is_to != b->is_to) {
  return !a->is_to? -1: 1;
 }
 if (a->id != b->id) {
  return a->id < b->id? -1: 1;
 }
 return 0;
}
