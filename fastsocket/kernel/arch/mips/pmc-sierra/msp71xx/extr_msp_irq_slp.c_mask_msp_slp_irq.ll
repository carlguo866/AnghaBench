; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_msp_irq_slp.c_mask_msp_slp_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pmc-sierra/msp71xx/extr_msp_irq_slp.c_mask_msp_slp_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSP_PER_INTBASE = common dso_local global i32 0, align 4
@MSP_SLP_INTBASE = common dso_local global i32 0, align 4
@SLP_INT_MSK_REG = common dso_local global i32* null, align 8
@PER_INT_MSK_REG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mask_msp_slp_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mask_msp_slp_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MSP_PER_INTBASE, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MSP_SLP_INTBASE, align 4
  %9 = sub i32 %7, %8
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32*, i32** @SLP_INT_MSK_REG, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %11
  store i32 %14, i32* %12, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @MSP_PER_INTBASE, align 4
  %18 = sub i32 %16, %17
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load i32*, i32** @PER_INT_MSK_REG, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %15, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
