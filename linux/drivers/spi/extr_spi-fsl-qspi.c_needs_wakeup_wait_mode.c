
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_qspi {TYPE_1__* devtype_data; } ;
struct TYPE_2__ {int quirks; } ;


 int QUADSPI_QUIRK_TKT245618 ;

__attribute__((used)) static inline int needs_wakeup_wait_mode(struct fsl_qspi *q)
{
 return q->devtype_data->quirks & QUADSPI_QUIRK_TKT245618;
}
