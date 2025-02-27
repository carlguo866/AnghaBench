; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irq_demux_extint8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_irq.c_s3c_irq_demux_extint8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@S3C24XX_EINTPEND = common dso_local global i32 0, align 4
@S3C24XX_EINTMASK = common dso_local global i32 0, align 4
@IRQ_EINT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @s3c_irq_demux_extint8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_demux_extint8(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load i32, i32* @S3C24XX_EINTPEND, align 4
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i32, i32* @S3C24XX_EINTMASK, align 4
  %10 = call i64 @__raw_readl(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, -256
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %20, %2
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @__ffs(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* @IRQ_EINT4, align 4
  %30 = sub nsw i32 %29, 4
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @generic_handle_irq(i32 %33)
  br label %17

35:                                               ; preds = %17
  ret void
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
