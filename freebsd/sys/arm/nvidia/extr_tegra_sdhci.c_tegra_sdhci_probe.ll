; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_sdhci.c_tegra_sdhci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sdhci_softc = type { i8*, i8* }
%struct.ofw_compat_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nvidia,tegra124-sdhci\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Tegra SDHCI controller\00", align 1
@compat_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"max-frequency\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_sdhci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_sdhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.tegra_sdhci_softc* @device_get_softc(i32 %8)
  store %struct.tegra_sdhci_softc* %9, %struct.tegra_sdhci_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ofw_bus_status_okay(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @ofw_bus_is_compatible(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_set_desc(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @compat_data, align 4
  %27 = call %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %25, i32 %26)
  store %struct.ofw_compat_data* %27, %struct.ofw_compat_data** %7, align 8
  %28 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %7, align 8
  %29 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %54

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ofw_bus_get_node(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @OF_getencprop(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %6, i32 8)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @OF_getencprop(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %6, i32 8)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.tegra_sdhci_softc*, %struct.tegra_sdhci_softc** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_sdhci_softc, %struct.tegra_sdhci_softc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %32, %22, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.tegra_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
