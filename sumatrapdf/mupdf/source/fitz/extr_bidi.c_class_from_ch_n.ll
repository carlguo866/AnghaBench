; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_class_from_ch_n.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi.c_class_from_ch_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BDI_S = common dso_local global i64 0, align 8
@BDI_WS = common dso_local global i64 0, align 8
@BDI_N = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @class_from_ch_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @class_from_ch_n(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @class_from_ch_ws(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @BDI_S, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @BDI_WS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i64, i64* @BDI_N, align 8
  store i64 %15, i64* %2, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

declare dso_local i64 @class_from_ch_ws(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
