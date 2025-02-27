; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_get_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdata_local*, i32*)* @__lpc_get_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc_get_mac(%struct.netdata_local* %0, i32* %1) #0 {
  %3 = alloca %struct.netdata_local*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.netdata_local* %0, %struct.netdata_local** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %7 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @LPC_ENET_SA2(i32 %8)
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 255
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %20 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LPC_ENET_SA1(i32 %21)
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %33 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @LPC_ENET_SA0(i32 %34)
  %36 = call i32 @readl(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC_ENET_SA2(i32) #1

declare dso_local i32 @LPC_ENET_SA1(i32) #1

declare dso_local i32 @LPC_ENET_SA0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
