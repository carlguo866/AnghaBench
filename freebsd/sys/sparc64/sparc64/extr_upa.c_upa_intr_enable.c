
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upa_icarg {int uica_imr; int uica_sc; } ;
struct intr_vector {int iv_mid; int iv_vec; struct upa_icarg* iv_icarg; } ;


 int INTMAP_ENABLE (int ,int ) ;
 int UPA_READ (int ,int ,int) ;
 int UPA_WRITE (int ,int ,int,int ) ;

__attribute__((used)) static void
upa_intr_enable(void *arg)
{
 struct intr_vector *iv = arg;
 struct upa_icarg *uica = iv->iv_icarg;

 UPA_WRITE(uica->uica_sc, uica->uica_imr, 0x0,
     INTMAP_ENABLE(iv->iv_vec, iv->iv_mid));
 (void)UPA_READ(uica->uica_sc, uica->uica_imr, 0x0);
}
