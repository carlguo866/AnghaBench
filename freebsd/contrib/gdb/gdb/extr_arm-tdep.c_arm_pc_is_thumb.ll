; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_pc_is_thumb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_pc_is_thumb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_pc_is_thumb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.minimal_symbol*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @IS_THUMB_ADDR(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %10)
  store %struct.minimal_symbol* %11, %struct.minimal_symbol** %4, align 8
  %12 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %13 = icmp ne %struct.minimal_symbol* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %16 = call i32 @MSYMBOL_IS_SPECIAL(%struct.minimal_symbol* %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @IS_THUMB_ADDR(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @MSYMBOL_IS_SPECIAL(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
