; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/owlet60/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATRIX_ROWS = common dso_local global i64 0, align 8
@raw_matrix = common dso_local global i32 0, align 4
@matrix = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @MATRIX_ROWS, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load i32, i32* @raw_matrix, align 4
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @read_cols_on_row(i32 %8, i64 %9)
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %2, align 8
  br label %3

16:                                               ; preds = %3
  %17 = load i32, i32* @raw_matrix, align 4
  %18 = load i32, i32* @matrix, align 4
  %19 = load i64, i64* @MATRIX_ROWS, align 8
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @debounce(i32 %17, i32 %18, i64 %19, i32 %20)
  %22 = call i32 (...) @matrix_scan_quantum()
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  ret i64 %24
}

declare dso_local i32 @read_cols_on_row(i32, i64) #1

declare dso_local i32 @debounce(i32, i32, i64, i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
