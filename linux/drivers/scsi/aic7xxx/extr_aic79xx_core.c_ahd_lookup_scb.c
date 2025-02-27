
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct scb {int dummy; } ;
struct TYPE_2__ {struct scb** scbindex; } ;
struct ahd_softc {TYPE_1__ scb_data; } ;


 size_t AHD_SCB_MAX ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int ahd_sync_scb (struct ahd_softc*,struct scb*,int) ;

struct scb *
ahd_lookup_scb(struct ahd_softc *ahd, u_int tag)
{
 struct scb* scb;

 if (tag >= AHD_SCB_MAX)
  return (((void*)0));
 scb = ahd->scb_data.scbindex[tag];
 if (scb != ((void*)0))
  ahd_sync_scb(ahd, scb,
        BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 return (scb);
}
