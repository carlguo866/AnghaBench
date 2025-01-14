
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int dummy; } ;


 int ACTION_SOFT_RESET ;
 int ISD200_ERROR ;
 int ISD200_GOOD ;
 int ISD200_TRANSPORT_GOOD ;
 int US_DEBUGP (char*,...) ;
 int isd200_action (struct us_data*,int ,int *,int ) ;

__attribute__((used)) static int isd200_atapi_soft_reset( struct us_data *us )
{
 int retStatus = ISD200_GOOD;
 int transferStatus;

 US_DEBUGP("Entering isd200_atapi_soft_reset\n");

 transferStatus = isd200_action( us, ACTION_SOFT_RESET, ((void*)0), 0 );
 if (transferStatus != ISD200_TRANSPORT_GOOD) {
  US_DEBUGP("   Error issuing Atapi Soft Reset\n");
  retStatus = ISD200_ERROR;
 }

 US_DEBUGP("Leaving isd200_atapi_soft_reset %08X\n", retStatus);
 return retStatus;
}
