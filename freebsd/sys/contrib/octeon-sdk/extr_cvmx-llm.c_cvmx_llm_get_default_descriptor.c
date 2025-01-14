
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rld0_bunks; int rld1_bunks; int rld0_mbytes; int rld1_mbytes; int max_rld_clock_mhz; int addr_rld1_bb_str; int addr_rld1_fb_str; int addr_rld0_bb_str; int addr_rld0_fb_str; int cpu_hz; } ;
typedef TYPE_1__ llm_descriptor_t ;
struct TYPE_7__ {scalar_t__ board_type; int board_rev_major; } ;
typedef TYPE_2__ cvmx_sysinfo_t ;


 scalar_t__ CVMX_BOARD_TYPE_EBH3000 ;
 scalar_t__ CVMX_BOARD_TYPE_EBH3100 ;
 scalar_t__ CVMX_BOARD_TYPE_EBT3000 ;
 scalar_t__ CVMX_BOARD_TYPE_EBT5800 ;
 scalar_t__ CVMX_BOARD_TYPE_KBP ;
 scalar_t__ CVMX_BOARD_TYPE_NICPRO2 ;
 scalar_t__ CVMX_BOARD_TYPE_THUNDER ;
 int CVMX_CLOCK_CORE ;
 int cvmx_board_type_to_string (scalar_t__) ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_dprintf (char*,int ,scalar_t__) ;
 TYPE_2__* cvmx_sysinfo_get () ;
 int memset (TYPE_1__*,int ,int) ;
 int strcpy (int ,char*) ;

int cvmx_llm_get_default_descriptor(llm_descriptor_t *llm_desc_ptr)
{
    cvmx_sysinfo_t *sys_ptr;
    sys_ptr = cvmx_sysinfo_get();

    if (!llm_desc_ptr)
        return -1;

    memset(llm_desc_ptr, 0, sizeof(llm_descriptor_t));

    llm_desc_ptr->cpu_hz = cvmx_clock_get_rate(CVMX_CLOCK_CORE);

    if (sys_ptr->board_type == CVMX_BOARD_TYPE_EBT3000)
    {
        strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10");

        strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 20 00 08 07 06 05 04 13 02 01 03 09 18 17 16 15 14 10 12 11 19");


        llm_desc_ptr->rld0_bunks = 2;
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld0_mbytes = 128;
        llm_desc_ptr->rld1_mbytes = 64;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_EBT5800)
    {
        strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 20 00 08 07 06 05 04 13 02 01 03 09 18 17 16 15 14 10 12 11 19");
        strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 20 00 08 07 06 05 04 13 02 01 03 09 18 17 16 15 14 10 12 11 19");
        llm_desc_ptr->rld0_bunks = 2;
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld0_mbytes = 128;
        llm_desc_ptr->rld1_mbytes = 128;
        llm_desc_ptr->max_rld_clock_mhz = 400;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_EBH3000)
    {
        strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10");
        strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10");
        llm_desc_ptr->rld0_bunks = 2;
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld0_mbytes = 128;
        llm_desc_ptr->rld1_mbytes = 128;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_THUNDER)
    {

        if (sys_ptr->board_rev_major >= 4)
        {
            strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 13 11 01 02 07 19 03 18 10 12 20 06 04 08 17 05 14 16 00 09 15");
            strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 11 13 04 08 17 05 14 16 00 09 15 06 01 02 07 19 03 18 10 12 20");
            strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 02 19 18 17 16 09 14 13 20 11 10 01 08 03 06 15 04 07 05 12 00");
            strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 19 02 08 03 06 15 04 07 05 12 00 01 18 17 16 09 14 13 20 11 10");
        }
        else
        {
            strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
            strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
            strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
            strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        }

        llm_desc_ptr->rld0_bunks = 2;
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld0_mbytes = 128;
        llm_desc_ptr->rld1_mbytes = 128;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_NICPRO2)
    {
        strcpy(llm_desc_ptr->addr_rld0_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld0_bb_str, "22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10");
        strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 19 20 08 07 06 05 04 03 02 01 00 09 18 17 16 15 14 13 12 11 10");
        llm_desc_ptr->rld0_bunks = 2;
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld0_mbytes = 256;
        llm_desc_ptr->rld1_mbytes = 256;
        llm_desc_ptr->max_rld_clock_mhz = 400;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_EBH3100)
    {

        llm_desc_ptr->rld0_bunks = 1;
        llm_desc_ptr->rld0_mbytes = 256;
    }
    else if (sys_ptr->board_type == CVMX_BOARD_TYPE_KBP)
    {
        strcpy(llm_desc_ptr->addr_rld0_fb_str, "");
        strcpy(llm_desc_ptr->addr_rld0_bb_str, "");
        llm_desc_ptr->rld0_bunks = 0;
        llm_desc_ptr->rld0_mbytes = 0;
        strcpy(llm_desc_ptr->addr_rld1_fb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        strcpy(llm_desc_ptr->addr_rld1_bb_str, "22 21 20 19 18 17 16 15 14 13 12 11 10 09 08 07 06 05 04 03 02 01 00");
        llm_desc_ptr->rld1_bunks = 2;
        llm_desc_ptr->rld1_mbytes = 64;
    }
    else
    {
        cvmx_dprintf("No default LLM configuration available for board %s (%d)\n", cvmx_board_type_to_string(sys_ptr->board_type), sys_ptr->board_type);
        return -1;
    }

    return(0);
}
