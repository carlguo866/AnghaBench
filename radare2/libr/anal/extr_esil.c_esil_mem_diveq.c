
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* anal; } ;
struct TYPE_5__ {int bits; } ;
typedef TYPE_2__ RAnalEsil ;


 int esil_mem_diveq_n (TYPE_2__*,int ) ;

__attribute__((used)) static bool esil_mem_diveq(RAnalEsil *esil) {
 return esil_mem_diveq_n (esil, esil->anal->bits);
}
