; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_..decode.h_it_advance.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/uprobes/extr_..decode.h_it_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSR_IT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @it_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @it_advance(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = and i64 %5, 100664320
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i64, i64* @PSR_IT_MASK, align 8
  %10 = xor i64 %9, -1
  %11 = load i64, i64* %2, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %2, align 8
  br label %29

13:                                               ; preds = %1
  store i64 100670464, i64* %3, align 8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, 100670464
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = shl i64 %16, 1
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = lshr i64 %18, 17
  %20 = load i64, i64* %4, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %22, 100670464
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %2, align 8
  %25 = and i64 %24, -100670465
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %2, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %13, %8
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
