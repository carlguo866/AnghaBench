; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_find_best.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mult.c_ccu_mult_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ccu_mult = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct._ccu_mult*)* @ccu_mult_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccu_mult_find_best(i64 %0, i64 %1, %struct._ccu_mult* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._ccu_mult*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct._ccu_mult* %2, %struct._ccu_mult** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = udiv i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct._ccu_mult*, %struct._ccu_mult** %6, align 8
  %14 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct._ccu_mult*, %struct._ccu_mult** %6, align 8
  %19 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct._ccu_mult*, %struct._ccu_mult** %6, align 8
  %24 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct._ccu_mult*, %struct._ccu_mult** %6, align 8
  %29 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* %7, align 4
  %33 = load %struct._ccu_mult*, %struct._ccu_mult** %6, align 8
  %34 = getelementptr inbounds %struct._ccu_mult, %struct._ccu_mult* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
