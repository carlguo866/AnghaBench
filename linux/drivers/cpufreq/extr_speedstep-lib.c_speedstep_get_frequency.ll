; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_speedstep_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_speedstep_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speedstep_get_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %14 [
    i32 132, label %5
    i32 128, label %7
    i32 134, label %9
    i32 133, label %9
    i32 129, label %11
    i32 131, label %11
    i32 130, label %11
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @pentium_core_get_frequency()
  store i32 %6, i32* %2, align 4
  br label %15

7:                                                ; preds = %1
  %8 = call i32 (...) @pentiumM_get_frequency()
  store i32 %8, i32* %2, align 4
  br label %15

9:                                                ; preds = %1, %1
  %10 = call i32 (...) @pentium4_get_frequency()
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1, %1, %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pentium3_get_frequency(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %11, %9, %7, %5
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @pentium_core_get_frequency(...) #1

declare dso_local i32 @pentiumM_get_frequency(...) #1

declare dso_local i32 @pentium4_get_frequency(...) #1

declare dso_local i32 @pentium3_get_frequency(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
