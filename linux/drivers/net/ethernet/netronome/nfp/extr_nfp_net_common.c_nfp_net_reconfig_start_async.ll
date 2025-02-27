; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_start_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_start_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@NFP_NET_POLL_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, i32)* @nfp_net_reconfig_start_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_reconfig_start_async(%struct.nfp_net* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %10, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @nfp_net_reconfig_start(%struct.nfp_net* %12, i32 %13)
  %15 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %18 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %17, i32 0, i32 1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @NFP_NET_POLL_TIMEOUT, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %19, %23
  %25 = call i32 @mod_timer(i32* %18, i64 %24)
  ret void
}

declare dso_local i32 @nfp_net_reconfig_start(%struct.nfp_net*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
