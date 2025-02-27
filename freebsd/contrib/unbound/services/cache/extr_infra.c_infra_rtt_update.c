
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; int hash; } ;
struct TYPE_5__ {int rto; } ;
struct infra_data {scalar_t__ timeout_A; scalar_t__ timeout_AAAA; scalar_t__ timeout_other; TYPE_1__ rtt; scalar_t__ probedelay; int ttl; } ;
struct infra_cache {int hosts; } ;
typedef int socklen_t ;


 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 scalar_t__ TIMEOUT_COUNT_MAX ;
 scalar_t__ USEFUL_SERVER_TOP_TIMEOUT ;
 int data_entry_init (struct infra_cache*,struct lruhash_entry*,int ) ;
 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int) ;
 int lock_rw_unlock (int *) ;
 struct lruhash_entry* new_entry (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int ) ;
 int rtt_init (TYPE_1__*) ;
 int rtt_lost (TYPE_1__*,int) ;
 scalar_t__ rtt_unclamped (TYPE_1__*) ;
 int rtt_update (TYPE_1__*,int) ;
 int slabhash_insert (int ,int ,struct lruhash_entry*,scalar_t__,int *) ;

int
infra_rtt_update(struct infra_cache* infra, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t* nm, size_t nmlen, int qtype,
 int roundtrip, int orig_rtt, time_t timenow)
{
 struct lruhash_entry* e = infra_lookup_nottl(infra, addr, addrlen,
  nm, nmlen, 1);
 struct infra_data* data;
 int needtoinsert = 0;
 int rto = 1;
 if(!e) {
  if(!(e = new_entry(infra, addr, addrlen, nm, nmlen, timenow)))
   return 0;
  needtoinsert = 1;
 } else if(((struct infra_data*)e->data)->ttl < timenow) {
  data_entry_init(infra, e, timenow);
 }

 data = (struct infra_data*)e->data;
 if(roundtrip == -1) {
  rtt_lost(&data->rtt, orig_rtt);
  if(qtype == LDNS_RR_TYPE_A) {
   if(data->timeout_A < TIMEOUT_COUNT_MAX)
    data->timeout_A++;
  } else if(qtype == LDNS_RR_TYPE_AAAA) {
   if(data->timeout_AAAA < TIMEOUT_COUNT_MAX)
    data->timeout_AAAA++;
  } else {
   if(data->timeout_other < TIMEOUT_COUNT_MAX)
    data->timeout_other++;
  }
 } else {



  if(rtt_unclamped(&data->rtt) >= USEFUL_SERVER_TOP_TIMEOUT)
   rtt_init(&data->rtt);
  rtt_update(&data->rtt, roundtrip);
  data->probedelay = 0;
  if(qtype == LDNS_RR_TYPE_A)
   data->timeout_A = 0;
  else if(qtype == LDNS_RR_TYPE_AAAA)
   data->timeout_AAAA = 0;
  else data->timeout_other = 0;
 }
 if(data->rtt.rto > 0)
  rto = data->rtt.rto;

 if(needtoinsert)
  slabhash_insert(infra->hosts, e->hash, e, e->data, ((void*)0));
 else { lock_rw_unlock(&e->lock); }
 return rto;
}
