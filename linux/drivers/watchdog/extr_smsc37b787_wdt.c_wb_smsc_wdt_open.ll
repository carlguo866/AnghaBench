; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@timer_enabled = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nowayout = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Watchdog enabled. Timeout set to %d %s\0A\00", align 1
@timeout = common dso_local global i32 0, align 4
@unit = common dso_local global i64 0, align 8
@UNIT_SECOND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"second(s)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"minute(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wb_smsc_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wb_smsc_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %6 = call i64 @test_and_set_bit(i32 0, i32* @timer_enabled)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i64, i64* @nowayout, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @THIS_MODULE, align 4
  %16 = call i32 @__module_get(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 (...) @wb_smsc_wdt_enable()
  %19 = load i32, i32* @timeout, align 4
  %20 = load i64, i64* @unit, align 8
  %21 = load i64, i64* @UNIT_SECOND, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %24)
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = call i32 @stream_open(%struct.inode* %26, %struct.file* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %17, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @wb_smsc_wdt_enable(...) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
