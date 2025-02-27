
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int ether_crc32_be (int ,int ) ;

__attribute__((used)) static u_int
ale_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t crc, *mchash = arg;

 crc = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN);
 mchash[crc >> 31] |= 1 << ((crc >> 26) & 0x1f);

 return (1);
}
