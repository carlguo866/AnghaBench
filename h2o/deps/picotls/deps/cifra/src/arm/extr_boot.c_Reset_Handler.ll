; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_boot.c_Reset_Handler.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_boot.c_Reset_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__data_end__ = common dso_local global i32 0, align 4
@__data_start__ = common dso_local global i32 0, align 4
@__etext = common dso_local global i32 0, align 4
@__bss_end__ = common dso_local global i32 0, align 4
@__bss_start__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Reset_Handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 trunc (i64 mul nsw (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @__data_end__ to i64), i64 ptrtoint (i32* @__data_start__ to i64)), i64 4), i64 4) to i32), i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @memcpy(i32* @__etext, i32* @__data_start__, i32 %3)
  store i32 trunc (i64 mul nsw (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @__bss_end__ to i64), i64 ptrtoint (i32* @__bss_start__ to i64)), i64 4), i64 4) to i32), i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @memset(i32* @__bss_start__, i32 0, i32 %5)
  %7 = call i32 (...) @main()
  br label %8

8:                                                ; preds = %0, %8
  br label %8
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @main(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
