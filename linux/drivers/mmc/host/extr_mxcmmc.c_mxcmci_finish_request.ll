; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32, i32*, i32*, i32*, i32, i64, i32 }
%struct.mmc_request = type { i32 }

@INT_SDIO_IRQ_EN = common dso_local global i32 0, align 4
@MMC_REG_INT_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, %struct.mmc_request*)* @mxcmci_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_finish_request(%struct.mxcmci_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %8 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %15 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @INT_SDIO_IRQ_EN, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MMC_REG_INT_CNTR, align 4
  %26 = call i32 @mxcmci_writel(%struct.mxcmci_host* %23, i32 %24, i32 %25)
  %27 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %28 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %27, i32 0, i32 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %32 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %34 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %36 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %38 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %41 = call i32 @mmc_request_done(i32 %39, %struct.mmc_request* %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mxcmci_writel(%struct.mxcmci_host*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
