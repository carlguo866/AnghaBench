
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_region_t ;
typedef int isc_buffer_t ;


 int base32 ;
 int base32_decoderegion (int *,int ,int *) ;

isc_result_t
isc_base32_decoderegion(isc_region_t *source, isc_buffer_t *target) {
 return (base32_decoderegion(source, base32, target));
}
