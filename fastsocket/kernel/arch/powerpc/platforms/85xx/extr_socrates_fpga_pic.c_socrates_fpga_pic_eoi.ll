; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_eoi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fpga_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@socrates_fpga_pic_lock = common dso_local global i32 0, align 4
@SOCRATES_FPGA_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @socrates_fpga_pic_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socrates_fpga_pic_eoi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @socrates_fpga_irq_to_hw(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fpga_irqs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @socrates_fpga_pic_lock, i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @FPGA_PIC_IRQMASK(i32 %17)
  %19 = call i32 @socrates_fpga_pic_read(i32 %18)
  %20 = load i32, i32* @SOCRATES_FPGA_IRQ_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 16
  %24 = shl i32 1, %23
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FPGA_PIC_IRQMASK(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @socrates_fpga_pic_write(i32 %28, i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @socrates_fpga_pic_lock, i64 %31)
  ret void
}

declare dso_local i32 @socrates_fpga_irq_to_hw(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @socrates_fpga_pic_read(i32) #1

declare dso_local i32 @FPGA_PIC_IRQMASK(i32) #1

declare dso_local i32 @socrates_fpga_pic_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
