
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbnode {int dummy; } ;
struct smbfs_fctx {int f_attrmask; char const* f_wildcard; int f_wclen; int f_ssp; int f_infolevel; void* f_name; } ;
struct smb_cred {int dummy; } ;


 int M_SMBFSDATA ;
 int M_WAITOK ;
 scalar_t__ SMB_DIALECT (int ) ;
 scalar_t__ SMB_DIALECT_NTLM0_12 ;
 int SMB_FIND_FILE_DIRECTORY_INFO ;
 int SMB_INFO_STANDARD ;
 int SMB_MAXFNAMELEN ;
 scalar_t__ SMB_UNICODE_STRINGS (int ) ;
 int SSTOVC (int ) ;
 void* malloc (int,int ,int ) ;

__attribute__((used)) static int
smbfs_findopenLM2(struct smbfs_fctx *ctx, struct smbnode *dnp,
 const char *wildcard, int wclen, int attr, struct smb_cred *scred)
{
 if (SMB_UNICODE_STRINGS(SSTOVC(ctx->f_ssp))) {
  ctx->f_name = malloc(SMB_MAXFNAMELEN * 2, M_SMBFSDATA, M_WAITOK);
 } else
  ctx->f_name = malloc(SMB_MAXFNAMELEN, M_SMBFSDATA, M_WAITOK);
 ctx->f_infolevel = SMB_DIALECT(SSTOVC(ctx->f_ssp)) < SMB_DIALECT_NTLM0_12 ?
     SMB_INFO_STANDARD : SMB_FIND_FILE_DIRECTORY_INFO;
 ctx->f_attrmask = attr;
 ctx->f_wildcard = wildcard;
 ctx->f_wclen = wclen;
 return 0;
}
