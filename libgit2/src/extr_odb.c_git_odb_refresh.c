
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t length; } ;
struct git_odb {TYPE_5__ backends; } ;
struct TYPE_6__ {int (* refresh ) (TYPE_1__*) ;} ;
typedef TYPE_1__ git_odb_backend ;
struct TYPE_7__ {TYPE_1__* backend; } ;
typedef TYPE_2__ backend_internal ;


 int assert (struct git_odb*) ;
 TYPE_2__* git_vector_get (TYPE_5__*,size_t) ;
 int stub1 (TYPE_1__*) ;

int git_odb_refresh(struct git_odb *db)
{
 size_t i;
 assert(db);

 for (i = 0; i < db->backends.length; ++i) {
  backend_internal *internal = git_vector_get(&db->backends, i);
  git_odb_backend *b = internal->backend;

  if (b->refresh != ((void*)0)) {
   int error = b->refresh(b);
   if (error < 0)
    return error;
  }
 }

 return 0;
}
