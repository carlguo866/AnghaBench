; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_get_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acerhdf.c_acerhdf_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32 }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"kernel mode fan control %d\0A\00", align 1
@kernelmode = common dso_local global i64 0, align 8
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@THERMAL_DEVICE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @acerhdf_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acerhdf_get_mode(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca %struct.thermal_zone_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i64, i64* @verbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, i64* @kernelmode, align 8
  %9 = call i32 @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i64, i64* @kernelmode, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  br label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @THERMAL_DEVICE_DISABLED, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  ret i32 0
}

declare dso_local i32 @pr_notice(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
