
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {scalar_t__ uid; scalar_t__ gid; } ;
typedef TYPE_1__ kcm_client ;
typedef TYPE_2__* kcm_ccache ;
struct TYPE_7__ {int flags; scalar_t__ uid; scalar_t__ gid; int mutex; int mode; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_ASSERT_VALID (TYPE_2__*) ;
 int KCM_FLAGS_OWNER_IS_SYSTEM ;
 int KRB5_FCC_PERM ;

krb5_error_code
kcm_chmod(krb5_context context,
   kcm_client *client,
   kcm_ccache ccache,
   uint16_t mode)
{
    KCM_ASSERT_VALID(ccache);


    if (ccache->flags & KCM_FLAGS_OWNER_IS_SYSTEM)
 return KRB5_FCC_PERM;

    if (ccache->uid != client->uid)
 return KRB5_FCC_PERM;

    if (ccache->gid != client->gid)
 return KRB5_FCC_PERM;

    HEIMDAL_MUTEX_lock(&ccache->mutex);

    ccache->mode = mode;

    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    return 0;
}
