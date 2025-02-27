
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef size_t spa_feature_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int ENOTSUP ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int VALID_FEATURE_FID (size_t) ;
 int feature_get_refcount (int *,int *,scalar_t__*) ;
 int * spa_feature_table ;
 scalar_t__ spa_version (int *) ;

boolean_t
spa_feature_is_active(spa_t *spa, spa_feature_t fid)
{
 int err;
 uint64_t refcount;

 ASSERT(VALID_FEATURE_FID(fid));
 if (spa_version(spa) < SPA_VERSION_FEATURES)
  return (B_FALSE);

 err = feature_get_refcount(spa, &spa_feature_table[fid], &refcount);
 ASSERT(err == 0 || err == ENOTSUP);
 return (err == 0 && refcount > 0);
}
