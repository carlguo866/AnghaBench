
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct atl1c_tpd_ring {scalar_t__ next_to_use; scalar_t__ count; int next_to_clean; } ;
struct atl1c_adapter {struct atl1c_tpd_ring* tpd_ring; } ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline u16 atl1c_tpd_avail(struct atl1c_adapter *adapter, enum atl1c_trans_queue type)
{
 struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
 u16 next_to_use = 0;
 u16 next_to_clean = 0;

 next_to_clean = atomic_read(&tpd_ring->next_to_clean);
 next_to_use = tpd_ring->next_to_use;

 return (u16)(next_to_clean > next_to_use) ?
  (next_to_clean - next_to_use - 1) :
  (tpd_ring->count + next_to_clean - next_to_use - 1);
}
