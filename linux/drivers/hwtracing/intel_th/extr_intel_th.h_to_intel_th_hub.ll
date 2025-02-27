; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th_hub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th_hub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i64 }
%struct.TYPE_2__ = type { %struct.intel_th_device* }

@INTEL_TH_SWITCH = common dso_local global i64 0, align 8
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_th_device* (%struct.intel_th_device*)* @to_intel_th_hub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %5 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTEL_TH_SWITCH, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  store %struct.intel_th_device* %10, %struct.intel_th_device** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %13 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %19 = call %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %18)
  store %struct.intel_th_device* %19, %struct.intel_th_device** %2, align 8
  br label %26

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %23 = call %struct.TYPE_2__* @to_intel_th(%struct.intel_th_device* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %24, align 8
  store %struct.intel_th_device* %25, %struct.intel_th_device** %2, align 8
  br label %26

26:                                               ; preds = %21, %17, %9
  %27 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  ret %struct.intel_th_device* %27
}

declare dso_local %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device*) #1

declare dso_local %struct.TYPE_2__* @to_intel_th(%struct.intel_th_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
