; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-sysfs.c_store_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-sysfs.c_store_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_scan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call i32* @dev_get_drvdata(%struct.device* %11)
  store i32* %12, i32** %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %26

20:                                               ; preds = %4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @ide_port_unregister_devices(i32* %21)
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @ide_port_scan(i32* %23)
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

declare dso_local i32* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @ide_port_unregister_devices(i32*) #1

declare dso_local i32 @ide_port_scan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
