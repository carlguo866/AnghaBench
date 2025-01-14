
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_sys_drv_span {int sp_start_lba; int sp_nblks; int* sp_arm; } ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_span(struct mlx_sys_drv_span *span, int arms)
{
    int i;

    printf("0x%08x-0x%08x %uMB on", span->sp_start_lba, span->sp_start_lba + span->sp_nblks, span->sp_nblks / 2048);
    for (i = 0; i < arms; i++)
 printf(" disk%02d%02d", span->sp_arm[i] >> 4, span->sp_arm[i] & 0x0f);
    printf("\n");
}
