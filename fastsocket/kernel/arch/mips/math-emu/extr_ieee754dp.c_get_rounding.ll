; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754dp.c_get_rounding.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754dp.c_get_rounding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rounding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rounding(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DP_MBIT(i32 3)
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %11, label %34 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %20
    i32 131, label %27
  ]

12:                                               ; preds = %10
  br label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 3
  %16 = and i32 %15, 1
  %17 = add nsw i32 3, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 8
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %34

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %10, %33, %26, %13, %12
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @DP_MBIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
