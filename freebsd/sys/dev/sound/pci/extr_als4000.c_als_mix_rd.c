
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sc_info {int sh; int st; } ;


 int ALS_MIXER_DATA ;
 int ALS_MIXER_INDEX ;
 int bus_space_read_1 (int ,int ,int ) ;
 int bus_space_write_1 (int ,int ,int ,int ) ;

__attribute__((used)) static u_int8_t
als_mix_rd(struct sc_info *sc, u_int8_t index)
{
 bus_space_write_1(sc->st, sc->sh, ALS_MIXER_INDEX, index);
 return bus_space_read_1(sc->st, sc->sh, ALS_MIXER_DATA);
}
