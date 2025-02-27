; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_channel_conn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_channel_conn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.hv_monitor_page = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*, %struct.hv_monitor_page*)* @channel_conn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_conn_id(%struct.vmbus_channel* %0, %struct.hv_monitor_page* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.hv_monitor_page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.hv_monitor_page* %1, %struct.hv_monitor_page** %4, align 8
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %8 = call i64 @channel_monitor_group(%struct.vmbus_channel* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %10 = call i64 @channel_monitor_offset(%struct.vmbus_channel* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.hv_monitor_page*, %struct.hv_monitor_page** %4, align 8
  %12 = getelementptr inbounds %struct.hv_monitor_page, %struct.hv_monitor_page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

declare dso_local i64 @channel_monitor_group(%struct.vmbus_channel*) #1

declare dso_local i64 @channel_monitor_offset(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
