
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_resource_entry {scalar_t__ type; } ;


 scalar_t__ IPR_RES_TYPE_IOAFP ;

__attribute__((used)) static inline int ipr_is_ioa_resource(struct ipr_resource_entry *res)
{
 return res->type == IPR_RES_TYPE_IOAFP;
}
