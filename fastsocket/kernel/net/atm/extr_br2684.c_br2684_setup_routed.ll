; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_setup_routed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_setup_routed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i64, i32*, i64 }
%struct.br2684_dev = type { i32, %struct.net_device* }

@br2684_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_PPP = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @br2684_setup_routed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br2684_setup_routed(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.br2684_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.br2684_dev* @BRPRIV(%struct.net_device* %4)
  store %struct.br2684_dev* %5, %struct.br2684_dev** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load %struct.br2684_dev*, %struct.br2684_dev** %3, align 8
  %8 = getelementptr inbounds %struct.br2684_dev, %struct.br2684_dev* %7, i32 0, i32 1
  store %struct.net_device* %6, %struct.net_device** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 5
  store i32* @br2684_netdev_ops, i32** %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store i32 1500, i32* %16, align 8
  %17 = load i32, i32* @ARPHRD_PPP, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IFF_POINTOPOINT, align 4
  %21 = load i32, i32* @IFF_NOARP, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @IFF_MULTICAST, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store i32 100, i32* %28, align 8
  %29 = load %struct.br2684_dev*, %struct.br2684_dev** %3, align 8
  %30 = getelementptr inbounds %struct.br2684_dev, %struct.br2684_dev* %29, i32 0, i32 0
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  ret void
}

declare dso_local %struct.br2684_dev* @BRPRIV(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
