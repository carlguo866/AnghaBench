
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;



__attribute__((used)) static const char* host_info(struct Scsi_Host *host)
{
 return "SCSI emulation for USB Mass Storage devices";
}
