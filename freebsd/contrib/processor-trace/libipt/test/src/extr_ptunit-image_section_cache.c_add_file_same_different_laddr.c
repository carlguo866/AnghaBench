
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int pt_iscache_add_file (int *,char*,unsigned long long,unsigned long long,unsigned long long) ;
 int ptu_int_gt (int,int ) ;
 int ptu_int_ne (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result
add_file_same_different_laddr(struct iscache_fixture *cfix)
{
 int isid[2];

 isid[0] = pt_iscache_add_file(&cfix->iscache, "name", 0ull, 1ull, 0ull);
 ptu_int_gt(isid[0], 0);

 isid[1] = pt_iscache_add_file(&cfix->iscache, "name", 0ull, 1ull, 1ull);
 ptu_int_gt(isid[1], 0);


 ptu_int_ne(isid[1], isid[0]);

 return ptu_passed();
}
