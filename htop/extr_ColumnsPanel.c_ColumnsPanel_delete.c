
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Panel ;
typedef int Object ;
typedef int ColumnsPanel ;


 int Panel_done (int *) ;
 int free (int *) ;

__attribute__((used)) static void ColumnsPanel_delete(Object* object) {
   Panel* super = (Panel*) object;
   ColumnsPanel* this = (ColumnsPanel*) object;
   Panel_done(super);
   free(this);
}
