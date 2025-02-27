; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hw_enable(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %6 = call i32 @ag71xx_rings_init(%struct.ag71xx* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 3
  %14 = call i32 @napi_enable(i32* %13)
  %15 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %16 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %17 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ag71xx_wr(%struct.ag71xx* %15, i32 %16, i32 %20)
  %22 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %23 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %24 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %25 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ag71xx_wr(%struct.ag71xx* %22, i32 %23, i32 %27)
  %29 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netif_start_queue(i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %11, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ag71xx_rings_init(%struct.ag71xx*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @netif_start_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
