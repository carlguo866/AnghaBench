
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; } ;
struct TYPE_8__ {int sin_len; struct in_addr sin_addr; scalar_t__ sin_family; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_9__ {TYPE_2__ sin; TYPE_1__ ss; } ;
typedef TYPE_3__ sockunion_t ;


 scalar_t__ AF_INET ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int IN_MULTICAST (int ) ;
 size_t MIN (scalar_t__,scalar_t__) ;
 scalar_t__ __inaddr_to_index (int ) ;
 int assert (int) ;
 TYPE_3__* calloc (scalar_t__,int) ;
 int errno ;
 int free (TYPE_3__*) ;
 int getsourcefilter (int,scalar_t__,struct sockaddr*,int,scalar_t__*,scalar_t__*,struct sockaddr_storage*) ;
 int memset (TYPE_3__*,int ,int) ;
 int ntohl (int ) ;

int
getipv4sourcefilter(int s, struct in_addr interface, struct in_addr group,
    uint32_t *fmode, uint32_t *numsrc, struct in_addr *slist)
{
 sockunion_t *psu, *tmpslist;
 sockunion_t tmpgroup;
 struct in_addr *pina;
 int err;
 size_t i;
 uint32_t ifindex, onumsrc;

 assert(s != -1);
 assert(fmode != ((void*)0));
 assert(numsrc != ((void*)0));

 onumsrc = *numsrc;
 *numsrc = 0;
 tmpslist = ((void*)0);

 if (!IN_MULTICAST(ntohl(group.s_addr)) ||
     (onumsrc != 0 && slist == ((void*)0))) {
  errno = EINVAL;
  return (-1);
 }

 ifindex = __inaddr_to_index(interface.s_addr);
 if (ifindex == 0) {
  errno = EADDRNOTAVAIL;
  return (-1);
 }

 memset(&tmpgroup, 0, sizeof(sockunion_t));
 tmpgroup.sin.sin_family = AF_INET;
 tmpgroup.sin.sin_len = sizeof(struct sockaddr_in);
 tmpgroup.sin.sin_addr = group;

 if (onumsrc != 0 || slist != ((void*)0)) {
  tmpslist = calloc(onumsrc, sizeof(sockunion_t));
  if (tmpslist == ((void*)0)) {
   errno = ENOMEM;
   return (-1);
  }
 }

 err = getsourcefilter(s, ifindex, (struct sockaddr *)&tmpgroup,
     sizeof(struct sockaddr_in), fmode, numsrc,
     (struct sockaddr_storage *)tmpslist);

 if (tmpslist != ((void*)0) && *numsrc != 0) {
  pina = slist;
  psu = tmpslist;
  for (i = 0; i < MIN(onumsrc, *numsrc); i++, psu++) {
   if (psu->ss.ss_family != AF_INET)
    continue;
   *pina++ = psu->sin.sin_addr;
  }
  free(tmpslist);
 }

 return (err);
}
