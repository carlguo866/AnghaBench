
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int mfc_dsisr_RW; } ;


 int in_be64 (int *) ;

__attribute__((used)) static u64 mfc_dsisr_get(struct spu *spu)
{
 return in_be64(&spu->priv1->mfc_dsisr_RW);
}
