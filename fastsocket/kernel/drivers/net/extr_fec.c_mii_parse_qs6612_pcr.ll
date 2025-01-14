; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_qs6612_pcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_mii_parse_qs6612_pcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32 }

@PHY_STAT_SPMASK = common dso_local global i32 0, align 4
@PHY_STAT_10HDX = common dso_local global i32 0, align 4
@PHY_STAT_100HDX = common dso_local global i32 0, align 4
@PHY_STAT_10FDX = common dso_local global i32 0, align 4
@PHY_STAT_100FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @mii_parse_qs6612_pcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mii_parse_qs6612_pcr(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %5, align 8
  %10 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %11 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %10, i32 0, i32 0
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load volatile i32, i32* %12, align 4
  %14 = load volatile i32, i32* @PHY_STAT_SPMASK, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 7
  switch i32 %19, label %36 [
    i32 1, label %20
    i32 2, label %24
    i32 5, label %28
    i32 6, label %32
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @PHY_STAT_10HDX, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @PHY_STAT_100HDX, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @PHY_STAT_10FDX, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @PHY_STAT_100FDX, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %2, %32, %28, %24, %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  store volatile i32 %37, i32* %38, align 4
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
