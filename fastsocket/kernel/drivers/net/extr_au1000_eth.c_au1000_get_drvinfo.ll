; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i8*, i64, i32, i32, i32 }
%struct.au1000_private = type { i32 }

@DRV_NAME = common dso_local global i8* null, align 8
@DRV_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @au1000_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.au1000_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %6)
  store %struct.au1000_private* %7, %struct.au1000_private** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** @DRV_NAME, align 8
  %12 = call i32 @strcpy(i32 %10, i8* %11)
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** @DRV_VERSION, align 8
  %17 = call i32 @strcpy(i32 %15, i8* %16)
  %18 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** @DRV_NAME, align 8
  %26 = load %struct.au1000_private*, %struct.au1000_private** %5, align 8
  %27 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sprintf(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28)
  %30 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
