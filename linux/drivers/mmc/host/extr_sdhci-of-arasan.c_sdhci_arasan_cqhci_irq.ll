; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_cqhci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_cqhci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32)* @sdhci_arasan_cqhci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_cqhci_irq(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @sdhci_cqe_irq(%struct.sdhci_host* %8, i32 %9, i32* %6, i32* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cqhci_irq(i32 %17, i32 %18, i32 %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @sdhci_cqe_irq(%struct.sdhci_host*, i32, i32*, i32*) #1

declare dso_local i32 @cqhci_irq(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
