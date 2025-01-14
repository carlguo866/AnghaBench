
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mc5 {TYPE_2__* adapter; } ;
struct TYPE_6__ {scalar_t__ rev; } ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef TYPE_2__ adapter_t ;


 int A_MC5_DB_ACK_SRCH_CMD ;
 int A_MC5_DB_AOPEN_SRCH_CMD ;
 int A_MC5_DB_DATA_READ_CMD ;
 int A_MC5_DB_DATA_WRITE_CMD ;
 int A_MC5_DB_DBGI_CONFIG ;
 int A_MC5_DB_ELOOKUP_CMD ;
 int A_MC5_DB_ILOOKUP_CMD ;
 int A_MC5_DB_PART_ID_INDEX ;
 int A_MC5_DB_POPEN_DATA_WR_CMD ;
 int A_MC5_DB_POPEN_MASK_WR_CMD ;
 int A_MC5_DB_RSP_LATENCY ;
 int A_MC5_DB_SYN_SRCH_CMD ;
 int DBGI_MODE_IDT52100 ;
 int EIO ;
 int IDT4_CMD_READ ;
 int IDT4_CMD_SEARCH144 ;
 int IDT4_CMD_WRITE ;
 int IDT4_DATARY_BASE_ADR0 ;
 scalar_t__ IDT4_GMR_BASE0 ;
 scalar_t__ IDT4_GMR_BASE1 ;
 scalar_t__ IDT4_GMR_BASE2 ;
 int IDT4_MSKARY_BASE_ADR0 ;
 scalar_t__ IDT4_SCR_ADR0 ;
 int V_RDLAT (int) ;
 int V_SRCHLAT (int) ;
 int dbgi_wr_data3 (TYPE_2__*,int,int,int) ;
 int init_mask_data_array (struct mc5*,int ,int ,int,int) ;
 scalar_t__ mc5_write (TYPE_2__*,scalar_t__,int) ;
 int t3_write_reg (TYPE_2__*,int ,int) ;

__attribute__((used)) static int init_idt43102(struct mc5 *mc5)
{
 int i;
 adapter_t *adap = mc5->adapter;

 t3_write_reg(adap, A_MC5_DB_RSP_LATENCY,
       adap->params.rev == 0 ? V_RDLAT(0xd) | V_SRCHLAT(0x11) :
          V_RDLAT(0xd) | V_SRCHLAT(0x12));





 t3_write_reg(adap, A_MC5_DB_POPEN_DATA_WR_CMD, IDT4_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_POPEN_MASK_WR_CMD, IDT4_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_AOPEN_SRCH_CMD,
       IDT4_CMD_SEARCH144 | 0x3800);
 t3_write_reg(adap, A_MC5_DB_SYN_SRCH_CMD, IDT4_CMD_SEARCH144);
 t3_write_reg(adap, A_MC5_DB_ACK_SRCH_CMD, IDT4_CMD_SEARCH144 | 0x3800);
 t3_write_reg(adap, A_MC5_DB_ILOOKUP_CMD, IDT4_CMD_SEARCH144 | 0x3800);
 t3_write_reg(adap, A_MC5_DB_ELOOKUP_CMD, IDT4_CMD_SEARCH144 | 0x800);
 t3_write_reg(adap, A_MC5_DB_DATA_WRITE_CMD, IDT4_CMD_WRITE);
 t3_write_reg(adap, A_MC5_DB_DATA_READ_CMD, IDT4_CMD_READ);

 t3_write_reg(adap, A_MC5_DB_PART_ID_INDEX, 3);


 t3_write_reg(adap, A_MC5_DB_DBGI_CONFIG, DBGI_MODE_IDT52100);


 dbgi_wr_data3(adap, 0xffffffff, 0xffffffff, 0xff);
 for (i = 0; i < 7; ++i)
  if (mc5_write(adap, IDT4_GMR_BASE0 + i, IDT4_CMD_WRITE))
   goto err;

 for (i = 0; i < 4; ++i)
  if (mc5_write(adap, IDT4_GMR_BASE2 + i, IDT4_CMD_WRITE))
   goto err;

 dbgi_wr_data3(adap, 0xfffffff9, 0xffffffff, 0xff);
 if (mc5_write(adap, IDT4_GMR_BASE1, IDT4_CMD_WRITE) ||
     mc5_write(adap, IDT4_GMR_BASE1 + 1, IDT4_CMD_WRITE) ||
     mc5_write(adap, IDT4_GMR_BASE1 + 4, IDT4_CMD_WRITE))
  goto err;

 dbgi_wr_data3(adap, 0xfffffff9, 0xffff8007, 0xff);
 if (mc5_write(adap, IDT4_GMR_BASE1 + 5, IDT4_CMD_WRITE))
  goto err;


 dbgi_wr_data3(adap, 0xf0000000, 0, 0);
 if (mc5_write(adap, IDT4_SCR_ADR0, IDT4_CMD_WRITE))
  goto err;

 return init_mask_data_array(mc5, IDT4_MSKARY_BASE_ADR0,
        IDT4_DATARY_BASE_ADR0, IDT4_CMD_WRITE, 1);
 err:
 return -EIO;
}
