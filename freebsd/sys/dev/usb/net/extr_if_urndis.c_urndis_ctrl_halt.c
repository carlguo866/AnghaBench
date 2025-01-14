
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct urndis_softc {int dummy; } ;
struct rndis_halt_req {void* rm_rid; void* rm_len; void* rm_type; } ;
typedef int msg ;


 int DPRINTF (char*,...) ;
 int REMOTE_NDIS_HALT_MSG ;
 scalar_t__ RNDIS_STATUS_SUCCESS ;
 void* htole32 (int) ;
 int le32toh (void*) ;
 scalar_t__ urndis_ctrl_send (struct urndis_softc*,struct rndis_halt_req*,int) ;

__attribute__((used)) static uint32_t
urndis_ctrl_halt(struct urndis_softc *sc)
{
 struct rndis_halt_req msg;
 uint32_t rval;

 msg.rm_type = htole32(REMOTE_NDIS_HALT_MSG);
 msg.rm_len = htole32(sizeof(msg));
 msg.rm_rid = 0;

 DPRINTF("type %u len %u rid %u\n",
     le32toh(msg.rm_type),
     le32toh(msg.rm_len),
     le32toh(msg.rm_rid));

 rval = urndis_ctrl_send(sc, &msg, sizeof(msg));

 if (rval != RNDIS_STATUS_SUCCESS)
  DPRINTF("halt failed\n");

 return (rval);
}
