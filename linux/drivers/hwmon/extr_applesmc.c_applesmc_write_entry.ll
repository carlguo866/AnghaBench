; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_write_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.applesmc_entry = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@smcreg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@APPLESMC_WRITE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.applesmc_entry*, i64*, i64)* @applesmc_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_write_entry(%struct.applesmc_entry* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.applesmc_entry*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.applesmc_entry* %0, %struct.applesmc_entry** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.applesmc_entry*, %struct.applesmc_entry** %5, align 8
  %10 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0))
  %19 = load i32, i32* @APPLESMC_WRITE_CMD, align 4
  %20 = load %struct.applesmc_entry*, %struct.applesmc_entry** %5, align 8
  %21 = getelementptr inbounds %struct.applesmc_entry, %struct.applesmc_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @write_smc(i32 %19, i32 %22, i64* %23, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smcreg, i32 0, i32 0))
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_smc(i32, i32, i64*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
