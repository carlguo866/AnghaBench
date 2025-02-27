; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_check_chip_exist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_check_chip_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_check_chip_exist(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %4 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %5 = call i32 @rtsx_readl(%struct.rtsx_chip* %4, i32 0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %8, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i32 @rtsx_readl(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
