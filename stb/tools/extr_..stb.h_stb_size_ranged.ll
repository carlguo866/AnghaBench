; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_size_ranged.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_size_ranged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_size_ranged(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 16777216
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 4, i32* %3, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 65536
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 3, i32* %3, align 4
  br label %18

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 256
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %18

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %12, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
