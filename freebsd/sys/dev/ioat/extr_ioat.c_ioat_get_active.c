
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ioat_softc {int head; int tail; int ring_size_order; } ;



__attribute__((used)) static inline uint32_t
ioat_get_active(struct ioat_softc *ioat)
{

 return ((ioat->head - ioat->tail) & ((1 << ioat->ring_size_order) - 1));
}
