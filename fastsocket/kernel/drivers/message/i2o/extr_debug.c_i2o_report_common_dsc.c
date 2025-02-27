
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 size_t I2O_DSC_DEVICE_NOT_AVAILABLE ;
 int printk (char*,...) ;

__attribute__((used)) static void i2o_report_common_dsc(u16 detailed_status)
{
 static char *COMMON_DSC[] = {
  "SUCCESS",
  "0x01",
  "BAD_KEY",
  "TCL_ERROR",
  "REPLY_BUFFER_FULL",
  "NO_SUCH_PAGE",
  "INSUFFICIENT_RESOURCE_SOFT",
  "INSUFFICIENT_RESOURCE_HARD",
  "0x08",
  "CHAIN_BUFFER_TOO_LARGE",
  "UNSUPPORTED_FUNCTION",
  "DEVICE_LOCKED",
  "DEVICE_RESET",
  "INAPPROPRIATE_FUNCTION",
  "INVALID_INITIATOR_ADDRESS",
  "INVALID_MESSAGE_FLAGS",
  "INVALID_OFFSET",
  "INVALID_PARAMETER",
  "INVALID_REQUEST",
  "INVALID_TARGET_ADDRESS",
  "MESSAGE_TOO_LARGE",
  "MESSAGE_TOO_SMALL",
  "MISSING_PARAMETER",
  "TIMEOUT",
  "UNKNOWN_ERROR",
  "UNKNOWN_FUNCTION",
  "UNSUPPORTED_VERSION",
  "DEVICE_BUSY",
  "DEVICE_NOT_AVAILABLE"
 };

 if (detailed_status > I2O_DSC_DEVICE_NOT_AVAILABLE)
  printk(" / DetailedStatus = %0#4x.\n",
         detailed_status);
 else
  printk(" / %s.\n", COMMON_DSC[detailed_status]);
}
