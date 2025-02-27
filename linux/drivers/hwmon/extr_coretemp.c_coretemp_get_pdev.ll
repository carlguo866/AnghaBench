; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_get_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_get_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@max_zones = common dso_local global i32 0, align 4
@zone_devices = common dso_local global %struct.platform_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (i32)* @coretemp_get_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @coretemp_get_pdev(i32 %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @topology_logical_die_id(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @max_zones, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.platform_device**, %struct.platform_device*** @zone_devices, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %14, i64 %16
  %18 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  store %struct.platform_device* %18, %struct.platform_device** %2, align 8
  br label %20

19:                                               ; preds = %9, %1
  store %struct.platform_device* null, %struct.platform_device** %2, align 8
  br label %20

20:                                               ; preds = %19, %13
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  ret %struct.platform_device* %21
}

declare dso_local i32 @topology_logical_die_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
