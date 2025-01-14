
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ ETHER_IS_MULTICAST (int const*) ;
 int MLX5E_MC_IPV4 ;
 int MLX5E_MC_IPV6 ;
 int MLX5E_MC_OTHER ;
 int MLX5E_UC ;

__attribute__((used)) static int
mlx5e_get_eth_addr_type(const u8 * addr)
{
 if (ETHER_IS_MULTICAST(addr) == 0)
  return (MLX5E_UC);

 if ((addr[0] == 0x01) &&
     (addr[1] == 0x00) &&
     (addr[2] == 0x5e) &&
     !(addr[3] & 0x80))
  return (MLX5E_MC_IPV4);

 if ((addr[0] == 0x33) &&
     (addr[1] == 0x33))
  return (MLX5E_MC_IPV6);

 return (MLX5E_MC_OTHER);
}
