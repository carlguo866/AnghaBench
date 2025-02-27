; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_dma_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i32, i32, i32, i64 }

@MMC_REG_STATUS = common dso_local global i64 0, align 8
@IMXMCI_PEND_DMA_END_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @imxmci_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_dma_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imxmci_host*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imxmci_host*
  store %struct.imxmci_host* %8, %struct.imxmci_host** %5, align 8
  %9 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %10 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MMC_REG_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readw(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %16 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %15, i32 0, i32 3
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %20 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @IMXMCI_PEND_DMA_END_b, align 4
  %22 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %23 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %22, i32 0, i32 1
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %26 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %25, i32 0, i32 0
  %27 = call i32 @tasklet_schedule(i32* %26)
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
