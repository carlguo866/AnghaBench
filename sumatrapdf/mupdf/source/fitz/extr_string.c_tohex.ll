; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_tohex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_string.c_tohex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tohex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tohex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 48
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 57
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 48
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 97
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 102
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 %19, 97
  %21 = add nsw i32 %20, 10
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %15, %12
  %23 = load i32, i32* %3, align 4
  %24 = icmp sge i32 %23, 65
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 70
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 65
  %31 = add nsw i32 %30, 10
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25, %22
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %28, %18, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
