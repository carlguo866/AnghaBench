; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_adx_wdt.c_adx_wdt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.adx_wdt* }
%struct.adx_wdt = type { i32 }

@adx_wdt_dev = common dso_local global i32 0, align 4
@driver_open = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @adx_wdt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adx_wdt_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.adx_wdt*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @adx_wdt_dev, align 4
  %8 = call %struct.adx_wdt* @platform_get_drvdata(i32 %7)
  store %struct.adx_wdt* %8, %struct.adx_wdt** %6, align 8
  %9 = call i64 @test_and_set_bit(i32 0, i32* @driver_open)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.adx_wdt*, %struct.adx_wdt** %6, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  store %struct.adx_wdt* %15, %struct.adx_wdt** %17, align 8
  %18 = load %struct.adx_wdt*, %struct.adx_wdt** %6, align 8
  %19 = call i32 @adx_wdt_set_timeout(%struct.adx_wdt* %18, i32 30)
  %20 = load %struct.adx_wdt*, %struct.adx_wdt** %6, align 8
  %21 = call i32 @adx_wdt_start(%struct.adx_wdt* %20)
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = call i32 @nonseekable_open(%struct.inode* %22, %struct.file* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.adx_wdt* @platform_get_drvdata(i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @adx_wdt_set_timeout(%struct.adx_wdt*, i32) #1

declare dso_local i32 @adx_wdt_start(%struct.adx_wdt*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
