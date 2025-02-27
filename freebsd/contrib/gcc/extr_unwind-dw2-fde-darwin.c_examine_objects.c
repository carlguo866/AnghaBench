
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int encoding; scalar_t__ mixed_encoding; } ;
struct TYPE_10__ {TYPE_2__ b; scalar_t__ i; } ;
struct TYPE_8__ {struct dwarf_fde* single; } ;
struct object {char* fde_end; TYPE_3__ s; scalar_t__ dbase; scalar_t__ tbase; struct object* next; void* pc_begin; TYPE_1__ u; } ;
struct mach_header_64 {int dummy; } ;
struct live_images {int examined_p; int vm_slide; char* fde; struct object* object_info; int destructor; scalar_t__ mh; struct live_images* next; } ;
struct dwarf_fde {int dummy; } ;
struct dwarf_eh_bases {void* func; scalar_t__ dbase; scalar_t__ tbase; } ;
struct TYPE_11__ {int pc_begin; } ;
typedef TYPE_4__ fde ;
typedef scalar_t__ _Unwind_Ptr ;


 int DESTRUCTOR_MAY_BE_CALLED_LIVE ;
 int DW_EH_PE_omit ;
 int EXAMINED_IMAGE_MASK ;
 int IMAGE_IS_TEXT_MASK ;
 int KEYMGR_GCC3_LIVE_IMAGE_LIST ;
 struct live_images* _keymgr_get_and_lock_processwide_ptr (int ) ;
 int _keymgr_unlock_processwide_ptr (int ) ;
 int base_from_object (int,struct object*) ;
 struct object* calloc (int,int) ;
 int get_fde_encoding (TYPE_4__ const*) ;
 char* getsectdatafromheader (scalar_t__,char*,char*,unsigned long*) ;
 char* getsectdatafromheader_64 (struct mach_header_64*,char*,char*,unsigned long*) ;
 int live_image_destructor ;
 int read_encoded_value_with_base (int,int ,int ,scalar_t__*) ;
 TYPE_4__* search_object (struct object*,void*) ;
 struct object* seen_objects ;

__attribute__((used)) static inline const fde *
examine_objects (void *pc, struct dwarf_eh_bases *bases, int dont_alloc)
{
  const fde *result = ((void*)0);
  struct live_images *image;

  image = _keymgr_get_and_lock_processwide_ptr (KEYMGR_GCC3_LIVE_IMAGE_LIST);

  for (; image != ((void*)0); image = image->next)
    if ((image->examined_p & EXAMINED_IMAGE_MASK) == 0)
      {
 char *fde = ((void*)0);
 unsigned long sz;






 if (fde == ((void*)0))
   {

     fde = getsectdatafromheader_64 ((struct mach_header_64 *) image->mh,
         "__TEXT", "__eh_frame", &sz);




     if (fde != ((void*)0))
       image->examined_p |= IMAGE_IS_TEXT_MASK;
   }


 if (fde != ((void*)0) && sz > 0)
   {
     char *real_fde = (fde + image->vm_slide);
     struct object *ob = ((void*)0);
     struct object panicob;

     if (! dont_alloc)
       ob = calloc (1, sizeof (struct object));
     dont_alloc |= ob == ((void*)0);
     if (dont_alloc)
       ob = &panicob;

     ob->pc_begin = (void *)-1;
     ob->tbase = 0;
     ob->dbase = 0;
     ob->u.single = (struct dwarf_fde *)real_fde;
     ob->s.i = 0;
     ob->s.b.encoding = DW_EH_PE_omit;
     ob->fde_end = real_fde + sz;

     image->fde = real_fde;

     result = search_object (ob, pc);

     if (! dont_alloc)
       {
  struct object **p;

  image->destructor = live_image_destructor;
  image->object_info = ob;

  image->examined_p |= (EXAMINED_IMAGE_MASK
          | DESTRUCTOR_MAY_BE_CALLED_LIVE);


  for (p = &seen_objects; *p ; p = &(*p)->next)
    if ((*p)->pc_begin < ob->pc_begin)
      break;
  ob->next = *p;
  *p = ob;
       }

     if (result)
       {
  int encoding;
  _Unwind_Ptr func;

  bases->tbase = ob->tbase;
  bases->dbase = ob->dbase;

  encoding = ob->s.b.encoding;
  if (ob->s.b.mixed_encoding)
    encoding = get_fde_encoding (result);
  read_encoded_value_with_base (encoding,
           base_from_object (encoding, ob),
           result->pc_begin, &func);
  bases->func = (void *) func;
  break;
       }
   }
 else
   image->examined_p |= EXAMINED_IMAGE_MASK;
      }

  _keymgr_unlock_processwide_ptr (KEYMGR_GCC3_LIVE_IMAGE_LIST);

  return result;
}
