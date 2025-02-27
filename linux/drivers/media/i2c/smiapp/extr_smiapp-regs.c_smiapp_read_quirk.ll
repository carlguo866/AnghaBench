; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_smiapp_read_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-regs.c_smiapp_read_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32 }

@reg_access = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*, i64, i64*, i32)* @smiapp_read_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_read_quirk(%struct.smiapp_sensor* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smiapp_sensor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64*, i64** %8, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %13 = load i32, i32* @reg_access, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @smiapp_call_quirk(%struct.smiapp_sensor* %12, i32 %13, i32 0, i64* %7, i64* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ENOIOCTLCMD, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = call i32 @__smiapp_read(%struct.smiapp_sensor* %30, i64 %31, i64* %32, i32 1)
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = call i32 @smiapp_read_no_quirk(%struct.smiapp_sensor* %35, i64 %36, i64* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %29, %24, %20
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @smiapp_call_quirk(%struct.smiapp_sensor*, i32, i32, i64*, i64*) #1

declare dso_local i32 @__smiapp_read(%struct.smiapp_sensor*, i64, i64*, i32) #1

declare dso_local i32 @smiapp_read_no_quirk(%struct.smiapp_sensor*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
