
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PMB_DATA ;
 unsigned long mk_pmb_entry (unsigned int) ;

__attribute__((used)) static inline unsigned long mk_pmb_data(unsigned int entry)
{
 return mk_pmb_entry(entry) | PMB_DATA;
}
