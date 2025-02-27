
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t length; int * pointer; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ package; } ;


 union acpi_object* ACPI_ALLOCATE (int) ;
 int ACPI_FREE (union acpi_object*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int WARN_ONCE (int,char*,scalar_t__) ;
 int memcpy (void*,int *,int) ;

__attribute__((used)) static union acpi_object *pkg_to_buf(union acpi_object *pkg)
{
 int i;
 void *dst;
 size_t size = 0;
 union acpi_object *buf = ((void*)0);

 if (pkg->type != ACPI_TYPE_PACKAGE) {
  WARN_ONCE(1, "BIOS bug, unexpected element type: %d\n",
    pkg->type);
  goto err;
 }

 for (i = 0; i < pkg->package.count; i++) {
  union acpi_object *obj = &pkg->package.elements[i];

  if (obj->type == ACPI_TYPE_INTEGER)
   size += 4;
  else if (obj->type == ACPI_TYPE_BUFFER)
   size += obj->buffer.length;
  else {
   WARN_ONCE(1, "BIOS bug, unexpected element type: %d\n",
     obj->type);
   goto err;
  }
 }

 buf = ACPI_ALLOCATE(sizeof(*buf) + size);
 if (!buf)
  goto err;

 dst = buf + 1;
 buf->type = ACPI_TYPE_BUFFER;
 buf->buffer.length = size;
 buf->buffer.pointer = dst;
 for (i = 0; i < pkg->package.count; i++) {
  union acpi_object *obj = &pkg->package.elements[i];

  if (obj->type == ACPI_TYPE_INTEGER) {
   memcpy(dst, &obj->integer.value, 4);
   dst += 4;
  } else if (obj->type == ACPI_TYPE_BUFFER) {
   memcpy(dst, obj->buffer.pointer, obj->buffer.length);
   dst += obj->buffer.length;
  }
 }
err:
 ACPI_FREE(pkg);
 return buf;
}
