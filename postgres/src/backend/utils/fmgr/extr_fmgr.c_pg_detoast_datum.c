
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varlena {int dummy; } ;


 scalar_t__ VARATT_IS_EXTENDED (struct varlena*) ;
 struct varlena* detoast_attr (struct varlena*) ;

struct varlena *
pg_detoast_datum(struct varlena *datum)
{
 if (VARATT_IS_EXTENDED(datum))
  return detoast_attr(datum);
 else
  return datum;
}
