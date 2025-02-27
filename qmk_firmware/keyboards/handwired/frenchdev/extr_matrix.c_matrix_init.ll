; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/frenchdev/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enable = common dso_local global i32 0, align 4
@debug_matrix = common dso_local global i32 0, align 4
@debug_keyboard = common dso_local global i32 0, align 4
@debug_mouse = common dso_local global i32 0, align 4
@mcp23018_status = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i64 0, align 8
@matrix = common dso_local global i64* null, align 8
@matrix_debouncing = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  store i32 1, i32* @debug_enable, align 4
  store i32 1, i32* @debug_matrix, align 4
  store i32 1, i32* @debug_keyboard, align 4
  store i32 1, i32* @debug_mouse, align 4
  %2 = call i32 (...) @init_mcp23018()
  store i32 %2, i32* @mcp23018_status, align 4
  %3 = call i32 (...) @unselect_rows()
  %4 = call i32 (...) @init_cols()
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @MATRIX_ROWS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i64*, i64** @matrix, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 0, i64* %12, align 8
  %13 = load i64*, i64** @matrix_debouncing, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %1, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %1, align 8
  br label %5

19:                                               ; preds = %5
  %20 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @init_mcp23018(...) #1

declare dso_local i32 @unselect_rows(...) #1

declare dso_local i32 @init_cols(...) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
