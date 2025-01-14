
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {int count; TYPE_1__* aces; } ;
typedef TYPE_2__ nfsacl41 ;
struct TYPE_4__ {scalar_t__ acetype; int acemask; int who; } ;
typedef int PSID ;
typedef int * PACL ;
typedef char* LPSTR ;
typedef int DWORD ;
typedef int BOOLEAN ;
typedef int ACL ;
typedef int ACCESS_MASK ;
typedef int ACCESS_ALLOWED_ACE ;


 scalar_t__ ACE4_ACCESS_ALLOWED_ACE_TYPE ;
 scalar_t__ ACE4_ACCESS_DENIED_ACE_TYPE ;
 int ACLLVL ;
 int ACL_REVISION ;
 int AddAccessAllowedAce (int *,int ,int ,int ) ;
 int AddAccessDeniedAce (int *,int ,int ,int ) ;
 int ERROR_INTERNAL_ERROR ;
 int ERROR_NOT_SUPPORTED ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 scalar_t__ InitializeAcl (int *,int,int ) ;
 int check_4_special_identifiers (int ,int *,int*,int *) ;
 int convert_nfs4name_2_user_domain (int ,char**) ;
 int dprintf (int ,char*,int ,char*) ;
 int eprintf (char*,int) ;
 int free (int *) ;
 int free_sids (int *,size_t) ;
 void* malloc (int) ;
 int map_name_2_sid (int*,int *,int ) ;

__attribute__((used)) static int convert_nfs4acl_2_dacl(nfsacl41 *acl, int file_type,
                                  PACL *dacl_out, PSID **sids_out)
{
    int status = ERROR_NOT_SUPPORTED, size = 0;
    uint32_t i;
    DWORD sid_len;
    PSID *sids;
    PACL dacl;
    LPSTR domain = ((void*)0);
    BOOLEAN flag;

    sids = malloc(acl->count * sizeof(PSID));
    if (sids == ((void*)0)) {
        status = GetLastError();
        goto out;
    }
    for (i = 0; i < acl->count; i++) {
        convert_nfs4name_2_user_domain(acl->aces[i].who, &domain);
        dprintf(ACLLVL, "handle_getacl: for user=%s domain=%s\n",
                acl->aces[i].who, domain?domain:"<null>");
        status = check_4_special_identifiers(acl->aces[i].who, &sids[i],
                                             &sid_len, &flag);
        if (status) {
            free_sids(sids, i);
            goto out;
        }
        if (!flag) {
            status = map_name_2_sid(&sid_len, &sids[i], acl->aces[i].who);
            if (status) {
                free_sids(sids, i);
                goto out;
            }
        }
        size += sid_len - sizeof(DWORD);
    }
    size += sizeof(ACL) + (sizeof(ACCESS_ALLOWED_ACE)*acl->count);
    size = (size + sizeof(DWORD) - 1) & 0xfffffffc;
    dacl = malloc(size);
    if (dacl == ((void*)0))
        goto out_free_sids;

    if (InitializeAcl(dacl, size, ACL_REVISION)) {
        ACCESS_MASK mask;
        for (i = 0; i < acl->count; i++) {

            mask = acl->aces[i].acemask;
            dprintf(ACLLVL, "access mask %x ace type %s\n", mask,
                acl->aces[i].acetype?"DENIED ACE":"ALLOWED ACE");
            if (acl->aces[i].acetype == ACE4_ACCESS_ALLOWED_ACE_TYPE) {
                status = AddAccessAllowedAce(dacl, ACL_REVISION, mask, sids[i]);
                if (!status) {
                    eprintf("convert_nfs4acl_2_dacl: AddAccessAllowedAce failed "
                            "with %d\n", status);
                    goto out_free_dacl;
                }
                else status = ERROR_SUCCESS;
            } else if (acl->aces[i].acetype == ACE4_ACCESS_DENIED_ACE_TYPE) {
                status = AddAccessDeniedAce(dacl, ACL_REVISION, mask, sids[i]);
                if (!status) {
                    eprintf("convert_nfs4acl_2_dacl: AddAccessDeniedAce failed "
                            "with %d\n", status);
                    goto out_free_dacl;
                }
                else status = ERROR_SUCCESS;
            } else {
                eprintf("convert_nfs4acl_2_dacl: unknown acetype %d\n",
                        acl->aces[i].acetype);
                status = ERROR_INTERNAL_ERROR;
                free(dacl);
                free_sids(sids, acl->count);
                goto out;
            }
        }
    } else {
        eprintf("convert_nfs4acl_2_dacl: InitializeAcl failed with %d\n", status);
        goto out_free_dacl;
    }
    status = ERROR_SUCCESS;
    *sids_out = sids;
    *dacl_out = dacl;
out:
    return status;
out_free_dacl:
    free(dacl);
out_free_sids:
    free_sids(sids, acl->count);
    status = GetLastError();
    goto out;
}
