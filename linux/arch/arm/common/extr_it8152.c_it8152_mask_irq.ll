; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_it8152.c_it8152_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@IT8152_INTC_LDCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIMR = common dso_local global i32 0, align 4
@IT8152_INTC_PDCNIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @it8152_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8152_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %4 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %5 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @IT8152_LD_IRQ(i32 0)
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %12 = call i32 @__raw_readl(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @IT8152_LD_IRQ(i32 0)
  %15 = sub i32 %13, %14
  %16 = shl i32 1, %15
  %17 = or i32 %12, %16
  %18 = load i32, i32* @IT8152_INTC_LDCNIMR, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  br label %50

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @IT8152_LP_IRQ(i32 0)
  %23 = icmp uge i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %26 = call i32 @__raw_readl(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @IT8152_LP_IRQ(i32 0)
  %29 = sub i32 %27, %28
  %30 = shl i32 1, %29
  %31 = or i32 %26, %30
  %32 = load i32, i32* @IT8152_INTC_LPCNIMR, align 4
  %33 = call i32 @__raw_writel(i32 %31, i32 %32)
  br label %49

34:                                               ; preds = %20
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @IT8152_PD_IRQ(i32 0)
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %40 = call i32 @__raw_readl(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @IT8152_PD_IRQ(i32 0)
  %43 = sub i32 %41, %42
  %44 = shl i32 1, %43
  %45 = or i32 %40, %44
  %46 = load i32, i32* @IT8152_INTC_PDCNIMR, align 4
  %47 = call i32 @__raw_writel(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @IT8152_LD_IRQ(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @IT8152_LP_IRQ(i32) #1

declare dso_local i32 @IT8152_PD_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
