
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;


 int LOG_PARSE (char*,int ,int ) ;
 int PMF_PARSE_CALL (int ,struct pmf_cmd*,struct pmf_handlers*,int ,int ) ;
 int pmf_next32 (struct pmf_cmd*) ;
 int read_i2c_sub ;

__attribute__((used)) static int pmf_parser_read_i2c_sub(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
 u8 subaddr = (u8)pmf_next32(cmd);
 u32 bytes = pmf_next32(cmd);

 LOG_PARSE("pmf: read_i2c_sub(subaddr: %x, bytes: %ud)\n",
    subaddr, bytes);

 PMF_PARSE_CALL(read_i2c_sub, cmd, h, subaddr, bytes);
}
