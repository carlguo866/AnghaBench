
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsp32_hw_data ;


 int ENA ;
 int SCL ;
 int SDA ;
 int nsp32_prom_set (int *,int ,int) ;

__attribute__((used)) static void nsp32_prom_start (nsp32_hw_data *data)
{

 nsp32_prom_set(data, SCL, 1);
 nsp32_prom_set(data, SDA, 1);
 nsp32_prom_set(data, ENA, 1);
 nsp32_prom_set(data, SDA, 0);

 nsp32_prom_set(data, SCL, 0);
}
