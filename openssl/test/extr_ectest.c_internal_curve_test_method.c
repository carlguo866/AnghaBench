
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; } ;
typedef int EC_GROUP ;


 int EC_GROUP_free (int *) ;
 int * EC_GROUP_new_by_curve_name (int) ;
 int OBJ_nid2sn (int) ;
 int TEST_info (char*,int ) ;
 int TEST_ptr (int *) ;
 TYPE_1__* curves ;
 int group_order_tests (int *) ;

__attribute__((used)) static int internal_curve_test_method(int n)
{
    int r, nid = curves[n].nid;
    EC_GROUP *group;

    if (!TEST_ptr(group = EC_GROUP_new_by_curve_name(nid))) {
        TEST_info("Curve %s failed\n", OBJ_nid2sn(nid));
        return 0;
    }
    r = group_order_tests(group);
    EC_GROUP_free(group);
    return r;
}
