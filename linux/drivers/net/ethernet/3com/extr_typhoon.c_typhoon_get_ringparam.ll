; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i8*, i8*, i8*, i8* }

@RXENT_ENTRIES = common dso_local global i8* null, align 8
@TXLO_ENTRIES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @typhoon_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %5 = load i8*, i8** @RXENT_ENTRIES, align 8
  %6 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @TXLO_ENTRIES, align 8
  %9 = getelementptr i8, i8* %8, i64 -1
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @RXENT_ENTRIES, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @TXLO_ENTRIES, align 8
  %16 = getelementptr i8, i8* %15, i64 -1
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
