
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct btc_coexist {int dummy; } ;


 int btc8821a1ant_coex_table (struct btc_coexist*,int,int,int,int,int) ;

__attribute__((used)) static void btc8821a1ant_coex_table_with_type(struct btc_coexist *btcoexist,
           bool force_exec, u8 type)
{
 switch (type) {
 case 0:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x55555555,
     0x55555555, 0xffffff, 0x3);
  break;
 case 1:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x55555555,
     0x5a5a5a5a, 0xffffff, 0x3);
  break;
 case 2:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x5a5a5a5a,
     0x5a5a5a5a, 0xffffff, 0x3);
  break;
 case 3:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x5a5a5a5a,
     0xaaaaaaaa, 0xffffff, 0x3);
  break;
 case 4:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x55555555,
     0x5a5a5a5a, 0xffffff, 0x3);
  break;
 case 5:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x5a5a5a5a,
     0xaaaa5a5a, 0xffffff, 0x3);
  break;
 case 6:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0x55555555,
     0xaaaa5a5a, 0xffffff, 0x3);
  break;
 case 7:
  btc8821a1ant_coex_table(btcoexist, force_exec, 0xaaaaaaaa,
     0xaaaaaaaa, 0xffffff, 0x3);
  break;
 default:
  break;
 }
}
