
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct TYPE_2__ {char* s; struct switch_val* link; struct switch_val* ports; void* i; } ;
struct switch_val {int port_vlan; int len; int duplex; int aneg; TYPE_1__ value; void* speed; int flags; int id; } ;
struct switch_port_link {int port_vlan; int len; int duplex; int aneg; TYPE_1__ value; void* speed; int flags; int id; } ;
struct switch_port {int port_vlan; int len; int duplex; int aneg; TYPE_1__ value; void* speed; int flags; int id; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int type; } ;
 int SWLIB_PORT_FLAG_TAGGED ;
 struct switch_val* alloca (int) ;
 void* atoi (char const*) ;
 int fprintf (int ,char*,char*) ;
 int isdigit (char) ;
 int isspace (char) ;
 struct switch_val* malloc (int) ;
 int memset (struct switch_val*,int ,int) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 char* strtok (char*,char*) ;
 int strtoul (char*,char**,int) ;
 int swlib_set_attr (struct switch_dev*,struct switch_attr*,struct switch_val*) ;

int swlib_set_attr_string(struct switch_dev *dev, struct switch_attr *a, int port_vlan, const char *str)
{
 struct switch_port *ports;
 struct switch_port_link *link;
 struct switch_val val;
 char *ptr;
 int cmd = 134;

 memset(&val, 0, sizeof(val));
 val.port_vlan = port_vlan;
 switch(a->type) {
 case 132:
  val.value.i = atoi(str);
  break;
 case 128:
  val.value.s = (char *)str;
  break;
 case 129:
  ports = alloca(sizeof(struct switch_port) * dev->ports);
  memset(ports, 0, sizeof(struct switch_port) * dev->ports);
  val.len = 0;
  ptr = (char *)str;
  while(ptr && *ptr)
  {
   while(*ptr && isspace(*ptr))
    ptr++;

   if (!*ptr)
    break;

   if (!isdigit(*ptr))
    return -1;

   if (val.len >= dev->ports)
    return -1;

   ports[val.len].flags = 0;
   ports[val.len].id = strtoul(ptr, &ptr, 10);
   while(*ptr && !isspace(*ptr)) {
    if (*ptr == 't')
     ports[val.len].flags |= SWLIB_PORT_FLAG_TAGGED;
    else
     return -1;

    ptr++;
   }
   if (*ptr)
    ptr++;
   val.len++;
  }
  val.value.ports = ports;
  break;
 case 131:
  link = malloc(sizeof(struct switch_port_link));
  memset(link, 0, sizeof(struct switch_port_link));
  ptr = (char *)str;
  for (ptr = strtok(ptr," "); ptr; ptr = strtok(((void*)0), " ")) {
   switch (cmd) {
   case 134:
    if (!strcmp(ptr, "duplex"))
     cmd = 135;
    else if (!strcmp(ptr, "autoneg"))
     cmd = 136;
    else if (!strcmp(ptr, "speed"))
     cmd = 133;
    else
     fprintf(stderr, "Unsupported option %s\n", ptr);
    break;
   case 135:
    if (!strcmp(ptr, "half"))
     link->duplex = 0;
    else if (!strcmp(ptr, "full"))
     link->duplex = 1;
    else
     fprintf(stderr, "Unsupported value %s\n", ptr);
    cmd = 134;
    break;
   case 136:
    if (!strcmp(ptr, "on"))
     link->aneg = 1;
    else if (!strcmp(ptr, "off"))
     link->aneg = 0;
    else
     fprintf(stderr, "Unsupported value %s\n", ptr);
    cmd = 134;
    break;
   case 133:
    link->speed = atoi(ptr);
    cmd = 134;
    break;
   }
  }
  val.value.link = link;
  break;
 case 130:
  if (str && !strcmp(str, "0"))
   return 0;

  break;
 default:
  return -1;
 }
 return swlib_set_attr(dev, a, &val);
}
