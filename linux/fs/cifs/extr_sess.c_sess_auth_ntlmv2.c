
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_hdr {int WordCount; int Uid; int Flags2; } ;
struct sess_data {int result; int * func; int nls_cp; TYPE_2__* iov; struct cifs_ses* ses; } ;
struct TYPE_10__ {int len; int * response; } ;
struct cifs_ses {int capabilities; int Suid; TYPE_4__ auth_key; int * user_name; } ;
typedef int __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_9__ {int Action; } ;
struct TYPE_7__ {scalar_t__ CaseSensitivePasswordLength; scalar_t__ CaseInsensitivePasswordLength; int Capabilities; } ;
struct TYPE_11__ {TYPE_3__ resp; TYPE_1__ req_no_secext; } ;
struct TYPE_8__ {char* iov_base; int iov_len; } ;
typedef TYPE_5__ SESSION_SETUP_ANDX ;


 int CAP_UNICODE ;
 int CIFS_SESS_KEY_SIZE ;
 int EIO ;
 int FYI ;
 int GUEST_LOGIN ;
 int SMBFLG2_UNICODE ;
 int VFS ;
 int ascii_ssetup_strings (char**,struct cifs_ses*,int ) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_ssetup_hdr (struct cifs_ses*,TYPE_5__*) ;
 scalar_t__ cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int decode_ascii_ssetup (char**,scalar_t__,struct cifs_ses*,int ) ;
 int decode_unicode_ssetup (char**,scalar_t__,struct cifs_ses*,int ) ;
 scalar_t__ get_bcc (struct smb_hdr*) ;
 int kfree (int *) ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,int *,int) ;
 char* pByteArea (struct smb_hdr*) ;
 int sess_alloc_buffer (struct sess_data*,int) ;
 int sess_establish_session (struct sess_data*) ;
 int sess_free_buffer (struct sess_data*) ;
 int sess_sendreceive (struct sess_data*) ;
 int setup_ntlmv2_rsp (struct cifs_ses*,int ) ;
 int unicode_ssetup_strings (char**,struct cifs_ses*,int ) ;

__attribute__((used)) static void
sess_auth_ntlmv2(struct sess_data *sess_data)
{
 int rc = 0;
 struct smb_hdr *smb_buf;
 SESSION_SETUP_ANDX *pSMB;
 char *bcc_ptr;
 struct cifs_ses *ses = sess_data->ses;
 __u32 capabilities;
 __u16 bytes_remaining;



 rc = sess_alloc_buffer(sess_data, 13);
 if (rc)
  goto out;

 pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
 bcc_ptr = sess_data->iov[2].iov_base;
 capabilities = cifs_ssetup_hdr(ses, pSMB);

 pSMB->req_no_secext.Capabilities = cpu_to_le32(capabilities);


 pSMB->req_no_secext.CaseInsensitivePasswordLength = 0;

 if (ses->user_name != ((void*)0)) {

  rc = setup_ntlmv2_rsp(ses, sess_data->nls_cp);
  if (rc) {
   cifs_dbg(VFS, "Error %d during NTLMv2 authentication\n", rc);
   goto out;
  }

  memcpy(bcc_ptr, ses->auth_key.response + CIFS_SESS_KEY_SIZE,
    ses->auth_key.len - CIFS_SESS_KEY_SIZE);
  bcc_ptr += ses->auth_key.len - CIFS_SESS_KEY_SIZE;




  pSMB->req_no_secext.CaseSensitivePasswordLength =
   cpu_to_le16(ses->auth_key.len - CIFS_SESS_KEY_SIZE);
 } else {
  pSMB->req_no_secext.CaseSensitivePasswordLength = 0;
 }

 if (ses->capabilities & CAP_UNICODE) {
  if (sess_data->iov[0].iov_len % 2) {
   *bcc_ptr = 0;
   bcc_ptr++;
  }
  unicode_ssetup_strings(&bcc_ptr, ses, sess_data->nls_cp);
 } else {
  ascii_ssetup_strings(&bcc_ptr, ses, sess_data->nls_cp);
 }


 sess_data->iov[2].iov_len = (long) bcc_ptr -
   (long) sess_data->iov[2].iov_base;

 rc = sess_sendreceive(sess_data);
 if (rc)
  goto out;

 pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
 smb_buf = (struct smb_hdr *)sess_data->iov[0].iov_base;

 if (smb_buf->WordCount != 3) {
  rc = -EIO;
  cifs_dbg(VFS, "bad word count %d\n", smb_buf->WordCount);
  goto out;
 }

 if (le16_to_cpu(pSMB->resp.Action) & GUEST_LOGIN)
  cifs_dbg(FYI, "Guest login\n");

 ses->Suid = smb_buf->Uid;
 cifs_dbg(FYI, "UID = %llu\n", ses->Suid);

 bytes_remaining = get_bcc(smb_buf);
 bcc_ptr = pByteArea(smb_buf);


 if (bytes_remaining == 0) {

 } else if (smb_buf->Flags2 & SMBFLG2_UNICODE) {

  if (((unsigned long) bcc_ptr - (unsigned long) smb_buf) % 2) {
   ++bcc_ptr;
   --bytes_remaining;
  }
  decode_unicode_ssetup(&bcc_ptr, bytes_remaining, ses,
          sess_data->nls_cp);
 } else {
  decode_ascii_ssetup(&bcc_ptr, bytes_remaining, ses,
        sess_data->nls_cp);
 }

 rc = sess_establish_session(sess_data);
out:
 sess_data->result = rc;
 sess_data->func = ((void*)0);
 sess_free_buffer(sess_data);
 kfree(ses->auth_key.response);
 ses->auth_key.response = ((void*)0);
}
