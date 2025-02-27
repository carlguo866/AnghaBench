; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/5272/extr_intc.c_intc_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/5272/extr_intc.c_intc_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@MCFINT_VECBASE = common dso_local global i32 0, align 4
@MCFINT_VECMAX = common dso_local global i32 0, align 4
@intc_irqmap = common dso_local global %struct.TYPE_2__* null, align 8
@MCF_MBAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intc_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intc_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MCFINT_VECBASE, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MCFINT_VECMAX, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i32, i32* @MCFINT_VECBASE, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sub i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intc_irqmap, align 8
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 13, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* @MCF_MBAR, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intc_irqmap, align 8
  %25 = load i32, i32* %2, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %23, %29
  %31 = call i32 @writel(i32 %22, i64 %30)
  br label %32

32:                                               ; preds = %11, %7, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
