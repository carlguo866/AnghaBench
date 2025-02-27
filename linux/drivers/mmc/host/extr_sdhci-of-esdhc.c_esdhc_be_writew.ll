; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_be_writew.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-esdhc.c_esdhc_be_writew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }

@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32, i32)* @esdhc_be_writew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_be_writew(%struct.sdhci_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %13 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @ioread32be(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @esdhc_writew_fixup(%struct.sdhci_host* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %30 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @iowrite32be(i32 %28, i64 %34)
  br label %36

36:                                               ; preds = %27, %3
  ret void
}

declare dso_local i32 @ioread32be(i64) #1

declare dso_local i32 @esdhc_writew_fixup(%struct.sdhci_host*, i32, i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
