
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int* chunks; int num_chunks; } ;
typedef TYPE_1__ sctp_auth_chklist_t ;


 int SCTPDBG (int ,char*,size_t,size_t) ;
 int SCTP_DEBUG_AUTH1 ;

int
sctp_auth_delete_chunk(uint8_t chunk, sctp_auth_chklist_t *list)
{
 if (list == ((void*)0))
  return (-1);

 if (list->chunks[chunk] == 1) {
  list->chunks[chunk] = 0;
  list->num_chunks--;
  SCTPDBG(SCTP_DEBUG_AUTH1,
      "SCTP: deleted chunk %u (0x%02x) from Auth list\n",
      chunk, chunk);
 }
 return (0);
}
