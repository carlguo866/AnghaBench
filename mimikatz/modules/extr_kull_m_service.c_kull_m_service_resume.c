
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int BOOL ;


 int SERVICE_CONTROL_CONTINUE ;
 int SERVICE_PAUSE_CONTINUE ;
 int kull_m_service_genericControl (int ,int ,int ,int *) ;

BOOL kull_m_service_resume(PCWSTR serviceName)
{
 return(kull_m_service_genericControl(serviceName, SERVICE_PAUSE_CONTINUE, SERVICE_CONTROL_CONTINUE, ((void*)0)));
}
