; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_vf_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_vf_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lio = type { %struct.octeon_device* }

@.str = private unnamed_addr constant [12 x i8] c"liquidio_vf\00", align 1
@LIQUIDIO_VERSION = common dso_local global i8* null, align 8
@ETHTOOL_FWVERS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @lio_get_vf_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_vf_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.lio* @GET_LIO(%struct.net_device* %7)
  store %struct.lio* %8, %struct.lio** %6, align 8
  %9 = load %struct.lio*, %struct.lio** %6, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 0
  %11 = load %struct.octeon_device*, %struct.octeon_device** %10, align 8
  store %struct.octeon_device* %11, %struct.octeon_device** %5, align 8
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = call i32 @memset(%struct.ethtool_drvinfo* %12, i32 0, i32 16)
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** @LIQUIDIO_VERSION, align 8
  %22 = call i32 @strcpy(i32 %20, i8* %21)
  %23 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %31 = call i32 @strncpy(i32 %25, i32 %29, i32 %30)
  %32 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %36 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_name(i32 %37)
  %39 = call i32 @strncpy(i32 %34, i32 %38, i32 32)
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_drvinfo*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
