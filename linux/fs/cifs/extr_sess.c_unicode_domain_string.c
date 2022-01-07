
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct cifs_ses {int * domainName; } ;
typedef int __le16 ;


 int CIFS_MAX_DOMAINNAME_LEN ;
 int cifs_strtoUTF16 (int *,int *,int ,struct nls_table const*) ;

__attribute__((used)) static void unicode_domain_string(char **pbcc_area, struct cifs_ses *ses,
       const struct nls_table *nls_cp)
{
 char *bcc_ptr = *pbcc_area;
 int bytes_ret = 0;


 if (ses->domainName == ((void*)0)) {


  *bcc_ptr = 0;
  *(bcc_ptr+1) = 0;
  bytes_ret = 0;
 } else
  bytes_ret = cifs_strtoUTF16((__le16 *) bcc_ptr, ses->domainName,
         CIFS_MAX_DOMAINNAME_LEN, nls_cp);
 bcc_ptr += 2 * bytes_ret;
 bcc_ptr += 2;

 *pbcc_area = bcc_ptr;
}
