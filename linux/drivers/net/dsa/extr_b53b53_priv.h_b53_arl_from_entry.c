
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct b53_arl_entry {int vid; int port; scalar_t__ is_age; scalar_t__ is_static; scalar_t__ is_valid; int mac; } ;


 int ARLTBL_AGE ;
 int ARLTBL_DATA_PORT_ID_MASK ;
 int ARLTBL_STATIC ;
 int ARLTBL_VALID ;
 int ARLTBL_VID_MASK ;
 int ARLTBL_VID_S ;
 int ether_addr_to_u64 (int ) ;

__attribute__((used)) static inline void b53_arl_from_entry(u64 *mac_vid, u32 *fwd_entry,
          const struct b53_arl_entry *ent)
{
 *mac_vid = ether_addr_to_u64(ent->mac);
 *mac_vid |= (u64)(ent->vid & ARLTBL_VID_MASK) << ARLTBL_VID_S;
 *fwd_entry = ent->port & ARLTBL_DATA_PORT_ID_MASK;
 if (ent->is_valid)
  *fwd_entry |= ARLTBL_VALID;
 if (ent->is_static)
  *fwd_entry |= ARLTBL_STATIC;
 if (ent->is_age)
  *fwd_entry |= ARLTBL_AGE;
}
