; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_fsl_mc_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_mc_device = type { %struct.fsl_mc_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @fsl_mc_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_device_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.fsl_mc_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device* %4)
  store %struct.fsl_mc_device* %5, %struct.fsl_mc_device** %3, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %6, i32 0, i32 0
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %7, align 8
  %9 = call i32 @kfree(%struct.fsl_mc_device* %8)
  %10 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %11 = call i64 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %15 = call %struct.fsl_mc_device* @to_fsl_mc_bus(%struct.fsl_mc_device* %14)
  %16 = call i32 @kfree(%struct.fsl_mc_device* %15)
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %19 = call i32 @kfree(%struct.fsl_mc_device* %18)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.fsl_mc_device*) #1

declare dso_local i64 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device*) #1

declare dso_local %struct.fsl_mc_device* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
