; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_sch_create_and_recog_new_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_sch_create_and_recog_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.ccw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @sch_create_and_recog_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sch_create_and_recog_new_device(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call %struct.ccw_device* @io_subchannel_create_ccwdev(%struct.subchannel* %4)
  store %struct.ccw_device* %5, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = call i64 @IS_ERR(%struct.ccw_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %11 = call i32 @css_sch_device_unregister(%struct.subchannel* %10)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %14 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %15 = call i32 @io_subchannel_recog(%struct.ccw_device* %13, %struct.subchannel* %14)
  br label %16

16:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.ccw_device* @io_subchannel_create_ccwdev(%struct.subchannel*) #1

declare dso_local i64 @IS_ERR(%struct.ccw_device*) #1

declare dso_local i32 @css_sch_device_unregister(%struct.subchannel*) #1

declare dso_local i32 @io_subchannel_recog(%struct.ccw_device*, %struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
