
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cifs_ses {TYPE_2__* ntlmssp; TYPE_1__* server; } ;
typedef int __u32 ;
struct TYPE_9__ {scalar_t__ MaximumLength; scalar_t__ Length; scalar_t__ BufferOffset; } ;
struct TYPE_8__ {scalar_t__ MaximumLength; scalar_t__ Length; scalar_t__ BufferOffset; } ;
struct TYPE_10__ {TYPE_4__ DomainName; TYPE_3__ WorkstationName; int NegotiateFlags; int MessageType; int Signature; } ;
struct TYPE_7__ {scalar_t__ sesskey_per_smbsess; } ;
struct TYPE_6__ {int session_estab; scalar_t__ sign; } ;
typedef TYPE_5__ NEGOTIATE_MESSAGE ;


 int NTLMSSP_NEGOTIATE_128 ;
 int NTLMSSP_NEGOTIATE_56 ;
 int NTLMSSP_NEGOTIATE_EXTENDED_SEC ;
 int NTLMSSP_NEGOTIATE_KEY_XCH ;
 int NTLMSSP_NEGOTIATE_NTLM ;
 int NTLMSSP_NEGOTIATE_SEAL ;
 int NTLMSSP_NEGOTIATE_SIGN ;
 int NTLMSSP_NEGOTIATE_UNICODE ;
 int NTLMSSP_REQUEST_TARGET ;
 int NTLMSSP_SIGNATURE ;
 int NtLmNegotiate ;
 int cpu_to_le32 (int) ;
 int memcpy (int ,int ,int) ;
 int memset (unsigned char*,int ,int) ;

void build_ntlmssp_negotiate_blob(unsigned char *pbuffer,
      struct cifs_ses *ses)
{
 NEGOTIATE_MESSAGE *sec_blob = (NEGOTIATE_MESSAGE *)pbuffer;
 __u32 flags;

 memset(pbuffer, 0, sizeof(NEGOTIATE_MESSAGE));
 memcpy(sec_blob->Signature, NTLMSSP_SIGNATURE, 8);
 sec_blob->MessageType = NtLmNegotiate;


 flags = NTLMSSP_NEGOTIATE_56 | NTLMSSP_REQUEST_TARGET |
  NTLMSSP_NEGOTIATE_128 | NTLMSSP_NEGOTIATE_UNICODE |
  NTLMSSP_NEGOTIATE_NTLM | NTLMSSP_NEGOTIATE_EXTENDED_SEC |
  NTLMSSP_NEGOTIATE_SEAL;
 if (ses->server->sign)
  flags |= NTLMSSP_NEGOTIATE_SIGN;
 if (!ses->server->session_estab || ses->ntlmssp->sesskey_per_smbsess)
  flags |= NTLMSSP_NEGOTIATE_KEY_XCH;

 sec_blob->NegotiateFlags = cpu_to_le32(flags);

 sec_blob->WorkstationName.BufferOffset = 0;
 sec_blob->WorkstationName.Length = 0;
 sec_blob->WorkstationName.MaximumLength = 0;


 sec_blob->DomainName.BufferOffset = 0;
 sec_blob->DomainName.Length = 0;
 sec_blob->DomainName.MaximumLength = 0;
}
