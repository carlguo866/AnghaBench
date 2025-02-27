
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct csr1212_keyval {struct csr1212_keyval* associate; TYPE_1__ key; } ;


 int BUG_ON (int) ;
 int CSR1212_KV_ID_DEPENDENT_INFO ;
 int CSR1212_KV_ID_DESCRIPTOR ;
 int CSR1212_KV_ID_EXTENDED_DATA ;
 int CSR1212_KV_ID_EXTENDED_KEY ;
 int CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID ;
 int csr1212_keep_keyval (struct csr1212_keyval*) ;
 int csr1212_release_keyval (struct csr1212_keyval*) ;

void csr1212_associate_keyval(struct csr1212_keyval *kv,
         struct csr1212_keyval *associate)
{
 BUG_ON(!kv || !associate || kv->key.id == CSR1212_KV_ID_DESCRIPTOR ||
        (associate->key.id != CSR1212_KV_ID_DESCRIPTOR &&
  associate->key.id != CSR1212_KV_ID_DEPENDENT_INFO &&
  associate->key.id != CSR1212_KV_ID_EXTENDED_KEY &&
  associate->key.id != CSR1212_KV_ID_EXTENDED_DATA &&
  associate->key.id < 0x30) ||
        (kv->key.id == CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID &&
  associate->key.id != CSR1212_KV_ID_EXTENDED_KEY) ||
        (kv->key.id == CSR1212_KV_ID_EXTENDED_KEY &&
  associate->key.id != CSR1212_KV_ID_EXTENDED_DATA) ||
        (associate->key.id == CSR1212_KV_ID_EXTENDED_KEY &&
  kv->key.id != CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID) ||
        (associate->key.id == CSR1212_KV_ID_EXTENDED_DATA &&
  kv->key.id != CSR1212_KV_ID_EXTENDED_KEY));

 if (kv->associate)
  csr1212_release_keyval(kv->associate);

 csr1212_keep_keyval(associate);
 kv->associate = associate;
}
