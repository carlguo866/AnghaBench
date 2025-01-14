
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int mid; int hi; scalar_t__ low; } ;
struct TYPE_4__ {long long ll; TYPE_1__ x; } ;
struct uuid_private {scalar_t__* node; int seq; TYPE_2__ time; } ;
struct uuid {int dummy; } ;


 scalar_t__ arc4random () ;
 int htobe16 (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct uuid_private uuid_last ;
 int uuid_mutex ;
 int uuid_node (scalar_t__*) ;
 size_t uuid_time () ;

struct uuid *
kern_uuidgen(struct uuid *store, size_t count)
{
 struct uuid_private uuid;
 uint64_t time;
 size_t n;

 mtx_lock(&uuid_mutex);

 uuid_node(uuid.node);
 time = uuid_time();

 if (uuid_last.time.ll == 0LL || uuid_last.node[0] != uuid.node[0] ||
     uuid_last.node[1] != uuid.node[1] ||
     uuid_last.node[2] != uuid.node[2])
  uuid.seq = (uint16_t)arc4random() & 0x3fff;
 else if (uuid_last.time.ll >= time)
  uuid.seq = (uuid_last.seq + 1) & 0x3fff;
 else
  uuid.seq = uuid_last.seq;

 uuid_last = uuid;
 uuid_last.time.ll = (time + count - 1) & ((1LL << 60) - 1LL);

 mtx_unlock(&uuid_mutex);


 uuid.seq = htobe16(uuid.seq | 0x8000);

 for (n = 0; n < count; n++) {

  uuid.time.x.low = (uint32_t)time;
  uuid.time.x.mid = (uint16_t)(time >> 32);
  uuid.time.x.hi = ((uint16_t)(time >> 48) & 0xfff) | (1 << 12);
  store[n] = *(struct uuid *)&uuid;
  time++;
 }

 return (store);
}
