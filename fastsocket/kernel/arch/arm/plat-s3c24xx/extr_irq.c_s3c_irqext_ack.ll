; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irqext_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irqext_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXTINT_OFF = common dso_local global i32 0, align 4
@S3C24XX_EINTMASK = common dso_local global i32 0, align 4
@S3C24XX_EINTPEND = common dso_local global i32 0, align 4
@IRQ_EINT7 = common dso_local global i32 0, align 4
@IRQ_EINT4t7 = common dso_local global i32 0, align 4
@IRQ_EINT8t23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s3c_irqext_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irqext_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @EXTINT_OFF, align 4
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* @S3C24XX_EINTMASK, align 4
  %12 = call i64 @__raw_readl(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @S3C24XX_EINTPEND, align 4
  %15 = call i32 @__raw_writel(i64 %13, i32 %14)
  %16 = load i32, i32* @S3C24XX_EINTPEND, align 4
  %17 = call i64 @__raw_readl(i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @IRQ_EINT7, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, 240
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @IRQ_EINT4t7, align 4
  %31 = call i32 @s3c_irq_ack(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %41

33:                                               ; preds = %1
  %34 = load i64, i64* %3, align 8
  %35 = lshr i64 %34, 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @IRQ_EINT8t23, align 4
  %39 = call i32 @s3c_irq_ack(i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %32
  ret void
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @s3c_irq_ack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
