; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/4xx/extr_uic.c_uic_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.uic = type { i32, i64 }

@UIC_ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @uic_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uic_mask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.uic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.uic* %8, %struct.uic** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call i32 @irqd_to_hwirq(%struct.irq_data* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.uic*, %struct.uic** %3, align 8
  %12 = getelementptr inbounds %struct.uic, %struct.uic* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.uic*, %struct.uic** %3, align 8
  %16 = getelementptr inbounds %struct.uic, %struct.uic* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UIC_ER, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mfdcr(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 31, %21
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.uic*, %struct.uic** %3, align 8
  %28 = getelementptr inbounds %struct.uic, %struct.uic* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UIC_ER, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mtdcr(i64 %31, i32 %32)
  %34 = load %struct.uic*, %struct.uic** %3, align 8
  %35 = getelementptr inbounds %struct.uic, %struct.uic* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @raw_spin_unlock_irqrestore(i32* %35, i64 %36)
  ret void
}

declare dso_local %struct.uic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mfdcr(i64) #1

declare dso_local i32 @mtdcr(i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
