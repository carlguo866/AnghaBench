; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@pm_async_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @dpm_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpm_wait(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = icmp ne %struct.device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %25

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @pm_async_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @wait_for_completion(i32* %23)
  br label %25

25:                                               ; preds = %7, %20, %14, %11
  ret void
}

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
