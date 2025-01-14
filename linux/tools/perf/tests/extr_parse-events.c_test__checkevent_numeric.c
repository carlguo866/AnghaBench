
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; int config; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct evsel {TYPE_3__ core; } ;
struct TYPE_4__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct evsel* evlist__first (struct evlist*) ;

__attribute__((used)) static int test__checkevent_numeric(struct evlist *evlist)
{
 struct evsel *evsel = evlist__first(evlist);

 TEST_ASSERT_VAL("wrong number of entries", 1 == evlist->core.nr_entries);
 TEST_ASSERT_VAL("wrong type", 1 == evsel->core.attr.type);
 TEST_ASSERT_VAL("wrong config", 1 == evsel->core.attr.config);
 return 0;
}
