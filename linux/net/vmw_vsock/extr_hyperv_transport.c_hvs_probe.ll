; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_hyperv_transport.c_hvs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32 }
%struct.hv_vmbus_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @hvs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvs_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.hv_vmbus_device_id*, align 8
  %5 = alloca %struct.vmbus_channel*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %4, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 0
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  store %struct.vmbus_channel* %8, %struct.vmbus_channel** %5, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %10 = call i32 @hvs_open_connection(%struct.vmbus_channel* %9)
  ret i32 0
}

declare dso_local i32 @hvs_open_connection(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
