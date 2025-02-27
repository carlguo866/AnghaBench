; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_irq.c_bcm1480_mask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/bcm1480/extr_irq.c_bcm1480_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcm1480_imr_lock = common dso_local global i32 0, align 4
@BCM1480_NR_IRQS_HALF = common dso_local global i32 0, align 4
@BCM1480_NR_IRQS = common dso_local global i32 0, align 4
@BCM1480_IMR_HL_SPACING = common dso_local global i64 0, align 8
@R_BCM1480_IMR_INTERRUPT_MASK_H = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm1480_mask_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @bcm1480_imr_lock, i64 %8)
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BCM1480_NR_IRQS, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* @BCM1480_IMR_HL_SPACING, align 8
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* @BCM1480_NR_IRQS_HALF, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %13, %2
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @A_BCM1480_IMR_MAPPER(i32 %23)
  %25 = load i64, i64* @R_BCM1480_IMR_INTERRUPT_MASK_H, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %26, %27
  %29 = call i32 @IOADDR(i64 %28)
  %30 = call i32 @____raw_readq(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @A_BCM1480_IMR_MAPPER(i32 %36)
  %38 = load i64, i64* @R_BCM1480_IMR_INTERRUPT_MASK_H, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %39, %40
  %42 = call i32 @IOADDR(i64 %41)
  %43 = call i32 @____raw_writeq(i32 %35, i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @bcm1480_imr_lock, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @____raw_readq(i32) #1

declare dso_local i32 @IOADDR(i64) #1

declare dso_local i64 @A_BCM1480_IMR_MAPPER(i32) #1

declare dso_local i32 @____raw_writeq(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
