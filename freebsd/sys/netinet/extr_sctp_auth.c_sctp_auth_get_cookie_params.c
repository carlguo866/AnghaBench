
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int active_keyid; int recv_keyid; int assoc_keyid; scalar_t__ random_len; TYPE_5__* random; } ;
struct TYPE_11__ {int shared_keys; TYPE_1__ authinfo; int * local_hmacs; int peer_hmacs; int peer_hmac_id; int * local_auth_chunks; } ;
struct sctp_tcb {TYPE_4__ asoc; TYPE_3__* sctp_ep; } ;
struct sctp_paramhdr {int param_length; int param_type; } ;
struct sctp_auth_random {int * chunk_types; int * hmac_ids; } ;
struct sctp_auth_hmac_algo {int * chunk_types; int * hmac_ids; } ;
struct sctp_auth_chunk_list {int * chunk_types; int * hmac_ids; } ;
struct mbuf {int dummy; } ;
struct TYPE_12__ {scalar_t__ key; } ;
typedef TYPE_5__ sctp_key_t ;
typedef int random_store ;
typedef int hmacs_store ;
typedef int chunks_store ;
struct TYPE_9__ {int shared_keys; int default_keyid; } ;
struct TYPE_10__ {TYPE_2__ sctp_ep; } ;


 scalar_t__ SCTP_CHUNK_LIST ;
 scalar_t__ SCTP_HMAC_LIST ;
 int SCTP_PARAM_BUFFER_SIZE ;
 scalar_t__ SCTP_RANDOM ;
 scalar_t__ SCTP_SIZE32 (scalar_t__) ;
 int memcpy (scalar_t__,struct sctp_auth_random*,int) ;
 scalar_t__ ntohs (int ) ;
 int * sctp_alloc_chunklist () ;
 int * sctp_alloc_hmaclist (scalar_t__) ;
 TYPE_5__* sctp_alloc_key (scalar_t__) ;
 int sctp_auth_add_chunk (int ,int *) ;
 int sctp_auth_add_hmacid (int *,scalar_t__) ;
 int sctp_clear_cachedkeys (struct sctp_tcb*,int ) ;
 int sctp_clear_chunklist (int *) ;
 int sctp_copy_skeylist (int *,int *) ;
 int sctp_free_hmaclist (int *) ;
 int sctp_free_key (TYPE_5__*) ;
 struct sctp_paramhdr* sctp_get_next_param (struct mbuf*,scalar_t__,struct sctp_paramhdr*,scalar_t__) ;
 scalar_t__ sctp_m_getptr (struct mbuf*,scalar_t__,int,int *) ;
 int sctp_negotiate_hmacid (int ,int *) ;

void
sctp_auth_get_cookie_params(struct sctp_tcb *stcb, struct mbuf *m,
    uint32_t offset, uint32_t length)
{
 struct sctp_paramhdr *phdr, tmp_param;
 uint16_t plen, ptype;
 uint8_t random_store[SCTP_PARAM_BUFFER_SIZE];
 struct sctp_auth_random *p_random = ((void*)0);
 uint16_t random_len = 0;
 uint8_t hmacs_store[SCTP_PARAM_BUFFER_SIZE];
 struct sctp_auth_hmac_algo *hmacs = ((void*)0);
 uint16_t hmacs_len = 0;
 uint8_t chunks_store[SCTP_PARAM_BUFFER_SIZE];
 struct sctp_auth_chunk_list *chunks = ((void*)0);
 uint16_t num_chunks = 0;
 sctp_key_t *new_key;
 uint32_t keylen;


 length += offset;

 phdr = (struct sctp_paramhdr *)sctp_m_getptr(m, offset,
     sizeof(struct sctp_paramhdr), (uint8_t *)&tmp_param);
 while (phdr != ((void*)0)) {
  ptype = ntohs(phdr->param_type);
  plen = ntohs(phdr->param_length);

  if ((plen == 0) || (offset + plen > length))
   break;

  if (ptype == SCTP_RANDOM) {
   if (plen > sizeof(random_store))
    break;
   phdr = sctp_get_next_param(m, offset,
       (struct sctp_paramhdr *)random_store, plen);
   if (phdr == ((void*)0))
    return;

   p_random = (struct sctp_auth_random *)phdr;
   random_len = plen - sizeof(*p_random);
  } else if (ptype == SCTP_HMAC_LIST) {
   uint16_t num_hmacs;
   uint16_t i;

   if (plen > sizeof(hmacs_store))
    break;
   phdr = sctp_get_next_param(m, offset,
       (struct sctp_paramhdr *)hmacs_store, plen);
   if (phdr == ((void*)0))
    return;

   hmacs = (struct sctp_auth_hmac_algo *)phdr;
   hmacs_len = plen - sizeof(*hmacs);
   num_hmacs = hmacs_len / sizeof(hmacs->hmac_ids[0]);
   if (stcb->asoc.local_hmacs != ((void*)0))
    sctp_free_hmaclist(stcb->asoc.local_hmacs);
   stcb->asoc.local_hmacs = sctp_alloc_hmaclist(num_hmacs);
   if (stcb->asoc.local_hmacs != ((void*)0)) {
    for (i = 0; i < num_hmacs; i++) {
     (void)sctp_auth_add_hmacid(stcb->asoc.local_hmacs,
         ntohs(hmacs->hmac_ids[i]));
    }
   }
  } else if (ptype == SCTP_CHUNK_LIST) {
   int i;

   if (plen > sizeof(chunks_store))
    break;
   phdr = sctp_get_next_param(m, offset,
       (struct sctp_paramhdr *)chunks_store, plen);
   if (phdr == ((void*)0))
    return;
   chunks = (struct sctp_auth_chunk_list *)phdr;
   num_chunks = plen - sizeof(*chunks);

   if (stcb->asoc.local_auth_chunks != ((void*)0))
    sctp_clear_chunklist(stcb->asoc.local_auth_chunks);
   else
    stcb->asoc.local_auth_chunks = sctp_alloc_chunklist();
   for (i = 0; i < num_chunks; i++) {
    (void)sctp_auth_add_chunk(chunks->chunk_types[i],
        stcb->asoc.local_auth_chunks);
   }
  }

  offset += SCTP_SIZE32(plen);
  if (offset + sizeof(struct sctp_paramhdr) > length)
   break;
  phdr = (struct sctp_paramhdr *)sctp_m_getptr(m, offset, sizeof(struct sctp_paramhdr),
      (uint8_t *)&tmp_param);
 }

 keylen = sizeof(*p_random) + random_len + sizeof(*hmacs) + hmacs_len;
 if (chunks != ((void*)0)) {
  keylen += sizeof(*chunks) + num_chunks;
 }
 new_key = sctp_alloc_key(keylen);
 if (new_key != ((void*)0)) {

  if (p_random != ((void*)0)) {
   keylen = sizeof(*p_random) + random_len;
   memcpy(new_key->key, p_random, keylen);
  } else {
   keylen = 0;
  }

  if (chunks != ((void*)0)) {
   memcpy(new_key->key + keylen, chunks,
       sizeof(*chunks) + num_chunks);
   keylen += sizeof(*chunks) + num_chunks;
  }

  if (hmacs != ((void*)0)) {
   memcpy(new_key->key + keylen, hmacs,
       sizeof(*hmacs) + hmacs_len);
  }
 }
 if (stcb->asoc.authinfo.random != ((void*)0))
  sctp_free_key(stcb->asoc.authinfo.random);
 stcb->asoc.authinfo.random = new_key;
 stcb->asoc.authinfo.random_len = random_len;
 sctp_clear_cachedkeys(stcb, stcb->asoc.authinfo.assoc_keyid);
 sctp_clear_cachedkeys(stcb, stcb->asoc.authinfo.recv_keyid);


 stcb->asoc.peer_hmac_id = sctp_negotiate_hmacid(stcb->asoc.peer_hmacs,
     stcb->asoc.local_hmacs);



 stcb->asoc.authinfo.active_keyid = stcb->sctp_ep->sctp_ep.default_keyid;

 (void)sctp_copy_skeylist(&stcb->sctp_ep->sctp_ep.shared_keys,
     &stcb->asoc.shared_keys);
}
