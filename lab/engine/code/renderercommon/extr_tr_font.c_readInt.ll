; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_font.c_readInt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_font.c_readInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdFile = common dso_local global i64* null, align 8
@fdOffset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readInt() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @fdFile, align 8
  %3 = load i64, i64* @fdOffset, align 8
  %4 = getelementptr inbounds i64, i64* %2, i64 %3
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i64*, i64** @fdFile, align 8
  %8 = load i64, i64* @fdOffset, align 8
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 8
  %14 = or i32 %6, %13
  %15 = load i64*, i64** @fdFile, align 8
  %16 = load i64, i64* @fdOffset, align 8
  %17 = add i64 %16, 2
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 16
  %22 = or i32 %14, %21
  %23 = load i64*, i64** @fdFile, align 8
  %24 = load i64, i64* @fdOffset, align 8
  %25 = add i64 %24, 3
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 24
  %30 = or i32 %22, %29
  store i32 %30, i32* %1, align 4
  %31 = load i64, i64* @fdOffset, align 8
  %32 = add i64 %31, 4
  store i64 %32, i64* @fdOffset, align 8
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
