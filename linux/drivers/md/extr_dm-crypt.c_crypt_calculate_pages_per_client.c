
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_CRYPT_MEMORY_PERCENT ;
 unsigned long DM_CRYPT_MIN_PAGES_PER_CLIENT ;
 unsigned long dm_crypt_clients_n ;
 unsigned long dm_crypt_pages_per_client ;
 int totalhigh_pages () ;
 int totalram_pages () ;

__attribute__((used)) static void crypt_calculate_pages_per_client(void)
{
 unsigned long pages = (totalram_pages() - totalhigh_pages()) * DM_CRYPT_MEMORY_PERCENT / 100;

 if (!dm_crypt_clients_n)
  return;

 pages /= dm_crypt_clients_n;
 if (pages < DM_CRYPT_MIN_PAGES_PER_CLIENT)
  pages = DM_CRYPT_MIN_PAGES_PER_CLIENT;
 dm_crypt_pages_per_client = pages;
}
