
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int COUNTER_INC (int ) ;
 int LABEL_DESTROY (struct label*,int ) ;
 int MAGIC_POSIX_SHM ;
 int posixshm_destroy_label ;

__attribute__((used)) static void
test_posixshm_destroy_label(struct label *label)
{

 LABEL_DESTROY(label, MAGIC_POSIX_SHM);
 COUNTER_INC(posixshm_destroy_label);
}
