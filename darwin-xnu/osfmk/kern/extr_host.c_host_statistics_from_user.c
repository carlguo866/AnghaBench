
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ host_t ;
typedef int host_info64_t ;
typedef int host_flavor_t ;


 int FALSE ;
 scalar_t__ HOST_NULL ;
 scalar_t__ KERN_INVALID_HOST ;
 scalar_t__ KERN_SUCCESS ;
 int cache_host_statistics (int,int ) ;
 scalar_t__ host_statistics (scalar_t__,int ,int ,int *) ;
 scalar_t__ rate_limit_host_statistics (int ,int ,int ,int *,scalar_t__*,int*) ;

kern_return_t
host_statistics_from_user(host_t host, host_flavor_t flavor, host_info64_t info, mach_msg_type_number_t * count)
{
 kern_return_t ret = KERN_SUCCESS;
 int index;

 if (host == HOST_NULL)
  return (KERN_INVALID_HOST);

 if (rate_limit_host_statistics(FALSE, flavor, info, count, &ret, &index))
  return ret;

 if (ret != KERN_SUCCESS)
  return ret;

 ret = host_statistics(host, flavor, info, count);

 if (ret == KERN_SUCCESS)
  cache_host_statistics(index, info);

 return ret;
}
