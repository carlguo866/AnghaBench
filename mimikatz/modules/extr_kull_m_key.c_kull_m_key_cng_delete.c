
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pPrivateKey; struct TYPE_4__* pPrivateProperties; scalar_t__ cbPublicProperties; scalar_t__ pPublicProperties; struct TYPE_4__* pName; } ;
typedef TYPE_1__* PKULL_M_KEY_CNG_BLOB ;


 int LocalFree (TYPE_1__*) ;
 int kull_m_key_cng_properties_delete (scalar_t__,scalar_t__) ;

void kull_m_key_cng_delete(PKULL_M_KEY_CNG_BLOB cngKey)
{
 if(cngKey)
 {
  if(cngKey->pName)
   LocalFree(cngKey->pName);
  if(cngKey->cbPublicProperties && cngKey->pPublicProperties)
   kull_m_key_cng_properties_delete(cngKey->pPublicProperties, cngKey->cbPublicProperties);
  if(cngKey->pPrivateProperties)
   LocalFree(cngKey->pPrivateProperties);
  if(cngKey->pPrivateKey)
   LocalFree(cngKey->pPrivateKey);
  LocalFree(cngKey);
 }
}
