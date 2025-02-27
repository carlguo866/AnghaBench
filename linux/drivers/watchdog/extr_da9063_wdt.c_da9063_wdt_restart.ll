; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.da9063 = type { i32, i32 }

@DA9063_REG_CONTROL_F = common dso_local global i32 0, align 4
@DA9063_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to shutdown (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @da9063_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.da9063*, align 8
  %8 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %10 = call %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.da9063* %10, %struct.da9063** %7, align 8
  %11 = load %struct.da9063*, %struct.da9063** %7, align 8
  %12 = getelementptr inbounds %struct.da9063, %struct.da9063* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DA9063_REG_CONTROL_F, align 4
  %15 = load i32, i32* @DA9063_SHUTDOWN, align 4
  %16 = call i32 @regmap_write(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.da9063*, %struct.da9063** %7, align 8
  %21 = getelementptr inbounds %struct.da9063, %struct.da9063* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_alert(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.da9063* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
