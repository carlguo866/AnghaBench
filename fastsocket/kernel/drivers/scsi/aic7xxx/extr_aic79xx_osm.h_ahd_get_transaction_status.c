
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scb {int io_ctx; } ;


 int ahd_cmd_get_transaction_status (int ) ;

__attribute__((used)) static inline
uint32_t ahd_get_transaction_status(struct scb *scb)
{
 return (ahd_cmd_get_transaction_status(scb->io_ctx));
}
