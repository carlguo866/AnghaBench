
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ BatteryLevel; } ;
typedef TYPE_1__ XINPUT_BATTERY_INFORMATION ;
typedef scalar_t__ DWORD ;


 int BATTERY_DEVTYPE_GAMEPAD ;
 scalar_t__ BATTERY_TYPE_DISCONNECTED ;
 scalar_t__ ERROR_BAD_ARGUMENTS ;
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ XUSER_MAX_COUNT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int ok (int,char*,...) ;
 scalar_t__ pXInputGetBatteryInformation (scalar_t__,int ,TYPE_1__*) ;
 int skip (char*,scalar_t__) ;

__attribute__((used)) static void test_get_batteryinformation(void)
{
    DWORD controllerNum;
    DWORD result;
    XINPUT_BATTERY_INFORMATION batteryInfo;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        ZeroMemory(&batteryInfo, sizeof(XINPUT_BATTERY_INFORMATION));

        result = pXInputGetBatteryInformation(controllerNum, BATTERY_DEVTYPE_GAMEPAD, &batteryInfo);
        ok(result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED, "XInputGetBatteryInformation failed with (%d)\n", result);

        if (ERROR_DEVICE_NOT_CONNECTED == result)
        {
            ok(batteryInfo.BatteryLevel == BATTERY_TYPE_DISCONNECTED, "Failed to report device as being disconnected.\n");
            skip("Controller %d is not connected\n", controllerNum);
        }
    }

    result = pXInputGetBatteryInformation(XUSER_MAX_COUNT+1, BATTERY_DEVTYPE_GAMEPAD, &batteryInfo);
    ok(result == ERROR_BAD_ARGUMENTS, "XInputGetBatteryInformation returned (%d)\n", result);
}
