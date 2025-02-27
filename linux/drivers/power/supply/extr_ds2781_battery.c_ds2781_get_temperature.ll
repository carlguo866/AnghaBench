; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_get_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2781_battery.c_ds2781_get_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2781_device_info = type { i32 }

@DS2781_TEMP_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds2781_device_info*, i32*)* @ds2781_get_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2781_get_temperature(%struct.ds2781_device_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds2781_device_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.ds2781_device_info* %0, %struct.ds2781_device_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ds2781_device_info*, %struct.ds2781_device_info** %4, align 8
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %11 = load i32, i32* @DS2781_TEMP_MSB, align 4
  %12 = call i32 @w1_ds2781_read(%struct.ds2781_device_info* %9, i8* %10, i32 %11, i32 8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = shl i32 %20, 3
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = ashr i32 %24, 5
  %26 = or i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sdiv i32 %28, 4
  %30 = add nsw i32 %27, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @w1_ds2781_read(%struct.ds2781_device_info*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
