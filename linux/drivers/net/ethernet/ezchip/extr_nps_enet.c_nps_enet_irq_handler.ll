; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32 }

@NPS_ENET_REG_RX_CTL = common dso_local global i32 0, align 4
@RX_CTL_CR_MASK = common dso_local global i32 0, align 4
@RX_CTL_CR_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_BUF_INT_ENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nps_enet_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nps_enet_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nps_enet_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.nps_enet_priv* %12, %struct.nps_enet_priv** %6, align 8
  %13 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %14 = load i32, i32* @NPS_ENET_REG_RX_CTL, align 4
  %15 = call i32 @nps_enet_reg_get(%struct.nps_enet_priv* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @RX_CTL_CR_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @RX_CTL_CR_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %22 = call i64 @nps_enet_is_tx_pending(%struct.nps_enet_priv* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24, %2
  %28 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %29 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %28, i32 0, i32 0
  %30 = call i32 @napi_schedule_prep(i32* %29)
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %35 = load i32, i32* @NPS_ENET_REG_BUF_INT_ENABLE, align 4
  %36 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %34, i32 %35, i32 0)
  %37 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %38 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %37, i32 0, i32 0
  %39 = call i32 @__napi_schedule(i32* %38)
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_get(%struct.nps_enet_priv*, i32) #1

declare dso_local i64 @nps_enet_is_tx_pending(%struct.nps_enet_priv*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
