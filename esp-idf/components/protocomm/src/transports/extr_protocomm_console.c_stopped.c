
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int TickType_t ;


 int portTICK_RATE_MS ;
 int xTaskNotifyWait (int ,int ,scalar_t__*,int) ;

__attribute__((used)) static bool stopped(void)
{
    uint32_t flag = 0;
    xTaskNotifyWait(0, 0, &flag, (TickType_t) 10/portTICK_RATE_MS);
    return (flag != 0);
}
