; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_be_readw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_be_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @esdhc_be_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esdhc_be_readw(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, -4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = call i32 @ioread32be(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @esdhc_readw_fixup(%struct.sdhci_host* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @esdhc_readw_fixup(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
