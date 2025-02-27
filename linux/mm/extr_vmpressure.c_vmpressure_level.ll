; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_level.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmpressure_level_critical = common dso_local global i64 0, align 8
@VMPRESSURE_CRITICAL = common dso_local global i32 0, align 4
@vmpressure_level_med = common dso_local global i64 0, align 8
@VMPRESSURE_MEDIUM = common dso_local global i32 0, align 4
@VMPRESSURE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @vmpressure_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmpressure_level(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @vmpressure_level_critical, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @VMPRESSURE_CRITICAL, align 4
  store i32 %8, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @vmpressure_level_med, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @VMPRESSURE_MEDIUM, align 4
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* @VMPRESSURE_LOW, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %13, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
