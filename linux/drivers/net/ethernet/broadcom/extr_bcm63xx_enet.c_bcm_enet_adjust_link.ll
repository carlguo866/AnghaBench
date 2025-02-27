; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enet_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"%s: link forced UP - %d/%s - flow control %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_enet_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.bcm_enet_priv* %5, %struct.bcm_enet_priv** %3, align 8
  %6 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %7 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @bcm_enet_set_duplex(%struct.bcm_enet_priv* %6, i64 %9)
  %11 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @bcm_enet_set_flow(%struct.bcm_enet_priv* %11, i64 %14, i64 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @netif_carrier_on(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 100, i32 10
  %30 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %37 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %42 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %43 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29, i8* %35, i8* %41, i8* %47)
  ret void
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcm_enet_set_duplex(%struct.bcm_enet_priv*, i64) #1

declare dso_local i32 @bcm_enet_set_flow(%struct.bcm_enet_priv*, i64, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
