
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {void* base; int size; int starting_element_count; int name; } ;


 int cvmx_dprintf (char*,unsigned long long,int,unsigned long long,...) ;
 void* cvmx_fpa_alloc (size_t) ;
 TYPE_1__* cvmx_fpa_pool_info ;
 int cvmx_ipd_free_ptr () ;
 size_t cvmx_ptr_to_phys (void*) ;

uint64_t cvmx_fpa_shutdown_pool(uint64_t pool)
{
 uint64_t errors = 0;
 uint64_t count = 0;
 uint64_t base = cvmx_ptr_to_phys(cvmx_fpa_pool_info[pool].base);
 uint64_t finish =
     base +
     cvmx_fpa_pool_info[pool].size *
     cvmx_fpa_pool_info[pool].starting_element_count;
 void *ptr;
 uint64_t address;

 count = 0;
 do {
  ptr = cvmx_fpa_alloc(pool);
  if (ptr)
   address = cvmx_ptr_to_phys(ptr);
  else
   address = 0;
  if (address) {
   if ((address >= base) && (address < finish) &&
       (((address -
          base) % cvmx_fpa_pool_info[pool].size) == 0)) {
    count++;
   } else {
    cvmx_dprintf
        ("ERROR: cvmx_fpa_shutdown_pool: Illegal address 0x%llx in pool %s(%d)\n",
         (unsigned long long)address,
         cvmx_fpa_pool_info[pool].name, (int)pool);
    errors++;
   }
  }
 } while (address);






 if (errors) {
  cvmx_dprintf
      ("ERROR: cvmx_fpa_shutdown_pool: Pool %s(%d) started at 0x%llx, ended at 0x%llx, with a step of 0x%llx\n",
       cvmx_fpa_pool_info[pool].name, (int)pool,
       (unsigned long long)base, (unsigned long long)finish,
       (unsigned long long)cvmx_fpa_pool_info[pool].size);
  return -errors;
 } else
  return 0;
}
