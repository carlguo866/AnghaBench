
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int tls_upgraded; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int FALSE ;
 scalar_t__ imap_init (struct connectdata*) ;

__attribute__((used)) static CURLcode imap_setup_connection(struct connectdata *conn)
{

  CURLcode result = imap_init(conn);
  if(result)
    return result;


  conn->tls_upgraded = FALSE;

  return CURLE_OK;
}
