
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct imap_conn {scalar_t__ mailbox_uidvalidity; scalar_t__ mailbox; } ;
struct TYPE_10__ {int* tcpconnect; } ;
struct TYPE_7__ {struct imap_conn imapc; } ;
struct connectdata {struct Curl_easy* data; TYPE_5__ bits; TYPE_2__ proto; } ;
struct IMAP {scalar_t__ query; scalar_t__ mindex; scalar_t__ uid; scalar_t__ custom; scalar_t__ mailbox; scalar_t__ uidvalidity; int transfer; } ;
struct TYPE_8__ {scalar_t__ kind; } ;
struct TYPE_9__ {TYPE_3__ mimepost; scalar_t__ upload; scalar_t__ opt_no_body; } ;
struct TYPE_6__ {struct IMAP* protop; } ;
struct Curl_easy {TYPE_4__ set; TYPE_1__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int DEBUGF (int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int FTPTRANSFER_INFO ;
 scalar_t__ MIMEKIND_NONE ;
 int TRUE ;
 scalar_t__ imap_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ imap_perform_append (struct connectdata*) ;
 scalar_t__ imap_perform_fetch (struct connectdata*) ;
 scalar_t__ imap_perform_list (struct connectdata*) ;
 scalar_t__ imap_perform_search (struct connectdata*) ;
 scalar_t__ imap_perform_select (struct connectdata*) ;
 int infof (struct Curl_easy*,char*) ;
 scalar_t__ strcasecompare (scalar_t__,scalar_t__) ;

__attribute__((used)) static CURLcode imap_perform(struct connectdata *conn, bool *connected,
                             bool *dophase_done)
{

  CURLcode result = CURLE_OK;
  struct Curl_easy *data = conn->data;
  struct IMAP *imap = data->req.protop;
  struct imap_conn *imapc = &conn->proto.imapc;
  bool selected = FALSE;

  DEBUGF(infof(conn->data, "DO phase starts\n"));

  if(conn->data->set.opt_no_body) {

    imap->transfer = FTPTRANSFER_INFO;
  }

  *dophase_done = FALSE;



  if(imap->mailbox && imapc->mailbox &&
     strcasecompare(imap->mailbox, imapc->mailbox) &&
     (!imap->uidvalidity || !imapc->mailbox_uidvalidity ||
      strcasecompare(imap->uidvalidity, imapc->mailbox_uidvalidity)))
    selected = TRUE;


  if(conn->data->set.upload || data->set.mimepost.kind != MIMEKIND_NONE)

    result = imap_perform_append(conn);
  else if(imap->custom && (selected || !imap->mailbox))

    result = imap_perform_list(conn);
  else if(!imap->custom && selected && (imap->uid || imap->mindex))

    result = imap_perform_fetch(conn);
  else if(!imap->custom && selected && imap->query)

    result = imap_perform_search(conn);
  else if(imap->mailbox && !selected &&
         (imap->custom || imap->uid || imap->mindex || imap->query))

    result = imap_perform_select(conn);
  else

    result = imap_perform_list(conn);

  if(result)
    return result;


  result = imap_multi_statemach(conn, dophase_done);

  *connected = conn->bits.tcpconnect[FIRSTSOCKET];

  if(*dophase_done)
    DEBUGF(infof(conn->data, "DO phase is complete\n"));

  return result;
}
