; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_pmu.c_cbe_read_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_pmu.c_cbe_read_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_PHYS_CTRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbe_read_ctr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NR_PHYS_CTRS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @cbe_read_phys_ctr(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cbe_get_ctr_size(i32 %14, i32 %15)
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NR_PHYS_CTRS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  br label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 65535
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @cbe_read_phys_ctr(i32, i32) #1

declare dso_local i32 @cbe_get_ctr_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
