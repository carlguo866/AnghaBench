
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rettype; } ;
struct TYPE_9__ {TYPE_2__ partfunc; } ;
struct TYPE_6__ {scalar_t__ column_type; } ;
struct TYPE_8__ {TYPE_1__ fd; TYPE_4__* partitioning; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__ Dimension ;
typedef int Datum ;


 scalar_t__ InvalidOid ;
 int ts_partitioning_func_apply (TYPE_4__*,int ) ;

Datum
ts_dimension_transform_value(Dimension *dim, Datum value, Oid const_datum_type, Oid *restype)
{
 if (((void*)0) != dim->partitioning)
  value = ts_partitioning_func_apply(dim->partitioning, value);

 if (((void*)0) != restype)
 {
  if (((void*)0) != dim->partitioning)
   *restype = dim->partitioning->partfunc.rettype;
  else if (const_datum_type != InvalidOid)
   *restype = const_datum_type;
  else
   *restype = dim->fd.column_type;
 }

 return value;
}
