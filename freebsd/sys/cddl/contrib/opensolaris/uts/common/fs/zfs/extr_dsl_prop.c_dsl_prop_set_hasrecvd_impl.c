
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_source_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;


 int FTAG ;
 scalar_t__ SPA_VERSION_RECVD_PROPS ;
 int VERIFY0 (int ) ;
 int ZPROP_HAS_RECVD ;
 int dsl_prop_set_int (char const*,int ,int ,int ) ;
 int spa_close (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 scalar_t__ spa_version (int *) ;

__attribute__((used)) static int
dsl_prop_set_hasrecvd_impl(const char *dsname, zprop_source_t source)
{
 uint64_t version;
 spa_t *spa;
 int error = 0;

 VERIFY0(spa_open(dsname, &spa, FTAG));
 version = spa_version(spa);
 spa_close(spa, FTAG);

 if (version >= SPA_VERSION_RECVD_PROPS)
  error = dsl_prop_set_int(dsname, ZPROP_HAS_RECVD, source, 0);
 return (error);
}
