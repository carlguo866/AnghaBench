; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_efuse_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_efuse_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT3290 = common dso_local global i32 0, align 4
@EFUSE_CTRL_3290 = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i32 0, align 4
@EFUSE_CTRL_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_efuse_detect(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @RT3290, align 4
  %7 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @EFUSE_CTRL_3290, align 4
  store i32 %10, i32* %4, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EFUSE_CTRL, align 4
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @EFUSE_CTRL_PRESENT, align 4
  %19 = call i32 @rt2x00_get_field32(i32 %17, i32 %18)
  ret i32 %19
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
