; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_end_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_discover.c_sas_discover_end_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }

@DISCE_PROBE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_discover_end_dev(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %6 = call i32 @sas_notify_lldd_dev_found(%struct.domain_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DISCE_PROBE, align 4
  %16 = call i32 @sas_discover_event(i32 %14, i32 %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @sas_notify_lldd_dev_found(%struct.domain_device*) #1

declare dso_local i32 @sas_discover_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
