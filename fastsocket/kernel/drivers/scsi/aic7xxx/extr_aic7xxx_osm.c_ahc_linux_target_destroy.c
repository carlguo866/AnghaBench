
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;


 struct scsi_target** ahc_linux_target_in_softc (struct scsi_target*) ;

__attribute__((used)) static void
ahc_linux_target_destroy(struct scsi_target *starget)
{
 struct scsi_target **ahc_targp = ahc_linux_target_in_softc(starget);

 *ahc_targp = ((void*)0);
}
