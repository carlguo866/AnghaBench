; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_irq_subscribe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_cw1200_sdio.c_cw1200_sdio_irq_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwbus_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"SW IRQ subscribe\0A\00", align 1
@cw1200_sdio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwbus_priv*)* @cw1200_sdio_irq_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_sdio_irq_subscribe(%struct.hwbus_priv* %0) #0 {
  %2 = alloca %struct.hwbus_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.hwbus_priv* %0, %struct.hwbus_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %6 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @sdio_claim_host(i32 %7)
  %9 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %10 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %17 = call i32 @cw1200_request_irq(%struct.hwbus_priv* %16)
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %20 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @cw1200_sdio_irq_handler, align 4
  %23 = call i32 @sdio_claim_irq(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.hwbus_priv*, %struct.hwbus_priv** %2, align 8
  %26 = getelementptr inbounds %struct.hwbus_priv, %struct.hwbus_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sdio_release_host(i32 %27)
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @cw1200_request_irq(%struct.hwbus_priv*) #1

declare dso_local i32 @sdio_claim_irq(i32, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
