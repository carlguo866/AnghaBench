; ModuleID = '/home/carl/AnghaBench/redis/src/extr_dict.c_rev.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_dict.c_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rev(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 64, i64* %3, align 8
  store i64 -1, i64* %4, align 8
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 1
  store i64 %7, i64* %3, align 8
  %8 = icmp ugt i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = shl i64 %10, %11
  %13 = load i64, i64* %4, align 8
  %14 = xor i64 %13, %12
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = lshr i64 %15, %16
  %18 = load i64, i64* %4, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %4, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = or i64 %19, %25
  store i64 %26, i64* %2, align 8
  br label %5

27:                                               ; preds = %5
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
