; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_device_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.amba_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @amba_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amba_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.amba_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.amba_device* @to_amba_device(%struct.device* %4)
  store %struct.amba_device* %5, %struct.amba_device** %3, align 8
  %6 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %7 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %12, i32 0, i32 0
  %14 = call i32 @release_resource(%struct.TYPE_2__* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.amba_device*, %struct.amba_device** %3, align 8
  %17 = call i32 @kfree(%struct.amba_device* %16)
  ret void
}

declare dso_local %struct.amba_device* @to_amba_device(%struct.device*) #1

declare dso_local i32 @release_resource(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
