
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {int length; int pointer; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; TYPE_1__ buffer; } ;
struct soc_button_info {int dummy; } ;
struct device {int dummy; } ;
struct acpi_buffer {union acpi_object* pointer; int member_0; } ;
typedef int acpi_status ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int ENODEV ;
 int ENOMEM ;
 struct soc_button_info* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int acpi_evaluate_object_typed (int ,char*,int *,struct acpi_buffer*,scalar_t__) ;
 int btns_desc_uuid ;
 int dev_err (struct device*,char*) ;
 struct soc_button_info* devm_kcalloc (struct device*,int,int,int ) ;
 int kfree (union acpi_object*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int soc_button_get_acpi_object_int (union acpi_object*) ;
 scalar_t__ soc_button_parse_btn_desc (struct device*,union acpi_object*,int,struct soc_button_info*) ;

__attribute__((used)) static struct soc_button_info *soc_button_get_button_info(struct device *dev)
{
 struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER };
 const union acpi_object *desc, *el0, *uuid, *btns_desc = ((void*)0);
 struct soc_button_info *button_info;
 acpi_status status;
 int i, btn, collection_uid = -1;

 status = acpi_evaluate_object_typed(ACPI_HANDLE(dev), "_DSD", ((void*)0),
         &buf, ACPI_TYPE_PACKAGE);
 if (ACPI_FAILURE(status)) {
  dev_err(dev, "ACPI _DSD object not found\n");
  return ERR_PTR(-ENODEV);
 }


 desc = buf.pointer;
 for (i = 0; (i + 1) < desc->package.count; i += 2) {
  uuid = &desc->package.elements[i];

  if (uuid->type != ACPI_TYPE_BUFFER ||
      uuid->buffer.length != 16 ||
      desc->package.elements[i + 1].type != ACPI_TYPE_PACKAGE) {
   break;
  }

  if (memcmp(uuid->buffer.pointer, btns_desc_uuid, 16) == 0) {
   btns_desc = &desc->package.elements[i + 1];
   break;
  }
 }

 if (!btns_desc) {
  dev_err(dev, "ACPI Button Descriptors not found\n");
  button_info = ERR_PTR(-ENODEV);
  goto out;
 }


 el0 = &btns_desc->package.elements[0];
 if (el0->type == ACPI_TYPE_PACKAGE &&
     el0->package.count == 5 &&

     soc_button_get_acpi_object_int(&el0->package.elements[0]) == 0 &&

     soc_button_get_acpi_object_int(&el0->package.elements[2]) == 0) {
  collection_uid = soc_button_get_acpi_object_int(
      &el0->package.elements[1]);
 }
 if (collection_uid == -1) {
  dev_err(dev, "Invalid Button Collection Descriptor\n");
  button_info = ERR_PTR(-ENODEV);
  goto out;
 }


 button_info = devm_kcalloc(dev, btns_desc->package.count,
       sizeof(*button_info), GFP_KERNEL);
 if (!button_info) {
  button_info = ERR_PTR(-ENOMEM);
  goto out;
 }


 for (i = 1, btn = 0; i < btns_desc->package.count; i++, btn++) {
  if (soc_button_parse_btn_desc(dev,
           &btns_desc->package.elements[i],
           collection_uid,
           &button_info[btn])) {
   button_info = ERR_PTR(-ENODEV);
   goto out;
  }
 }

out:
 kfree(buf.pointer);
 return button_info;
}
