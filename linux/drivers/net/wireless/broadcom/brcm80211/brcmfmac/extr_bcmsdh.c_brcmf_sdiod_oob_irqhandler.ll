; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_oob_irqhandler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcmsdh.c_brcmf_sdiod_oob_irqhandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i32, i32 }

@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"OOB intr triggered\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @brcmf_sdiod_oob_irqhandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdiod_oob_irqhandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  %6 = alloca %struct.brcmf_sdio_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.brcmf_bus* @dev_get_drvdata(i8* %7)
  store %struct.brcmf_bus* %8, %struct.brcmf_bus** %5, align 8
  %9 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %10 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %11, align 8
  store %struct.brcmf_sdio_dev* %12, %struct.brcmf_sdio_dev** %6, align 8
  %13 = load i32, i32* @INTR, align 4
  %14 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %6, align 8
  %16 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @disable_irq_nosync(i32 %20)
  %22 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %6, align 8
  %23 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @brcmf_sdio_isr(i32 %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i8*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @brcmf_sdio_isr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
