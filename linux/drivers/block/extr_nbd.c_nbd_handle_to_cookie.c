
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int NBD_COOKIE_BITS ;

__attribute__((used)) static u32 nbd_handle_to_cookie(u64 handle)
{
 return (u32)(handle >> NBD_COOKIE_BITS);
}
