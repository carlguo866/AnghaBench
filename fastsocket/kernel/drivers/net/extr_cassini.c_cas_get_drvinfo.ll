; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i8*, i32, i64, i32, i32, i32 }
%struct.cas = type { i64, i32 }

@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@ETHTOOL_BUSINFO_LEN = common dso_local global i32 0, align 4
@DRV_MODULE_VERSION = common dso_local global i32 0, align 4
@CAS_MAX_REGS = common dso_local global i64 0, align 8
@CAS_NUM_STAT_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @cas_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.cas*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.cas* @netdev_priv(%struct.net_device* %6)
  store %struct.cas* %7, %struct.cas** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DRV_MODULE_NAME, align 4
  %12 = load i32, i32* @ETHTOOL_BUSINFO_LEN, align 4
  %13 = call i32 @strncpy(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DRV_MODULE_VERSION, align 4
  %18 = load i32, i32* @ETHTOOL_BUSINFO_LEN, align 4
  %19 = call i32 @strncpy(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %23, align 1
  %24 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cas*, %struct.cas** %5, align 8
  %28 = getelementptr inbounds %struct.cas, %struct.cas* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pci_name(i32 %29)
  %31 = load i32, i32* @ETHTOOL_BUSINFO_LEN, align 4
  %32 = call i32 @strncpy(i32 %26, i32 %30, i32 %31)
  %33 = load %struct.cas*, %struct.cas** %5, align 8
  %34 = getelementptr inbounds %struct.cas, %struct.cas* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CAS_MAX_REGS, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.cas*, %struct.cas** %5, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %44

42:                                               ; preds = %2
  %43 = load i64, i64* @CAS_MAX_REGS, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %41, %38 ], [ %43, %42 ]
  %46 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @CAS_NUM_STAT_KEYS, align 4
  %49 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
