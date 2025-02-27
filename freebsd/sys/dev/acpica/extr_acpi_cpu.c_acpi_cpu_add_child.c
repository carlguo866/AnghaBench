
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct acpi_cpu_device {int ad_rl; } ;
typedef int * device_t ;


 int M_NOWAIT ;
 int M_TEMP ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct acpi_cpu_device*) ;
 int free (struct acpi_cpu_device*,int ) ;
 struct acpi_cpu_device* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
acpi_cpu_add_child(device_t dev, u_int order, const char *name, int unit)
{
    struct acpi_cpu_device *ad;
    device_t child;

    if ((ad = malloc(sizeof(*ad), M_TEMP, M_NOWAIT | M_ZERO)) == ((void*)0))
 return (((void*)0));

    resource_list_init(&ad->ad_rl);

    child = device_add_child_ordered(dev, order, name, unit);
    if (child != ((void*)0))
 device_set_ivars(child, ad);
    else
 free(ad, M_TEMP);
    return (child);
}
