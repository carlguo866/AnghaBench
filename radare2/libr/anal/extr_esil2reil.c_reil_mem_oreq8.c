
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalEsil ;


 int REIL_OR ;
 int reil_mem_bineq_n (int *,int ,int) ;

__attribute__((used)) static bool reil_mem_oreq8(RAnalEsil *esil) { return reil_mem_bineq_n(esil, REIL_OR, 8); }
