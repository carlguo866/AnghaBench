
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;

__attribute__((used)) static int dib7090_host_bus_drive(struct dib7000p_state *state, u8 drive)
{
 u16 reg;


 reg = dib7000p_read_word(state, 1798) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
 reg |= (drive << 12) | (drive << 6) | drive;
 dib7000p_write_word(state, 1798, reg);


 reg = dib7000p_read_word(state, 1799) & ~((0x7 << 2) | (0x7 << 8));
 reg |= (drive << 8) | (drive << 2);
 dib7000p_write_word(state, 1799, reg);


 reg = dib7000p_read_word(state, 1800) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
 reg |= (drive << 12) | (drive << 6) | drive;
 dib7000p_write_word(state, 1800, reg);


 reg = dib7000p_read_word(state, 1801) & ~((0x7 << 2) | (0x7 << 8));
 reg |= (drive << 8) | (drive << 2);
 dib7000p_write_word(state, 1801, reg);


 reg = dib7000p_read_word(state, 1802) & ~((0x7) | (0x7 << 6) | (0x7 << 12));
 reg |= (drive << 12) | (drive << 6) | drive;
 dib7000p_write_word(state, 1802, reg);

 return 0;
}
