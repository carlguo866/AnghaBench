; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cio.c_opj_write_double_LE.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cio.c_opj_write_double_LE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_write_double_LE(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds i32, i32* %4, i64 4
  %8 = getelementptr inbounds i32, i32* %7, i64 -1
  store i32* %8, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 4
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 -1
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* %14, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  store i32 %16, i32* %17, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %9

22:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
