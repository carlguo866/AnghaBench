
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int avmcs_release (struct pcmcia_device*) ;

__attribute__((used)) static void avmcs_detach(struct pcmcia_device *link)
{
 avmcs_release(link);
}
