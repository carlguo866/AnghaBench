
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ifname; } ;
struct TYPE_3__ {int default_classes; } ;
struct pfctl_altq {TYPE_2__ pa; TYPE_1__ meta; } ;


 int warnx (char*,int ) ;

__attribute__((used)) static int
check_commit_hfsc(int dev, int opts, struct pfctl_altq *if_ppa)
{


 if (if_ppa->meta.default_classes != 1) {
  warnx("should have one default queue on %s", if_ppa->pa.ifname);
  return (1);
 }
 return (0);
}
