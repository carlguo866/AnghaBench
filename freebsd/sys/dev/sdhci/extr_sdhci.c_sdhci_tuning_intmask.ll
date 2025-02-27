; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_tuning_intmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_tuning_intmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i64 }

@SDHCI_TUNING_ENABLED = common dso_local global i32 0, align 4
@SDHCI_INT_TUNEERR = common dso_local global i32 0, align 4
@SDHCI_RETUNE_MODE_2 = common dso_local global i64 0, align 8
@SDHCI_RETUNE_MODE_3 = common dso_local global i64 0, align 8
@SDHCI_INT_RETUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_slot*)* @sdhci_tuning_intmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_tuning_intmask(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SDHCI_TUNING_ENABLED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* @SDHCI_INT_TUNEERR, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SDHCI_RETUNE_MODE_2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %10
  %20 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SDHCI_RETUNE_MODE_3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %10
  %26 = load i32, i32* @SDHCI_INT_RETUNE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
