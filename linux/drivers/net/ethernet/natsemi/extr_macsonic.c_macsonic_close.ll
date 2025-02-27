; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_macsonic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@IRQ_AUTO_3 = common dso_local global i64 0, align 8
@IRQ_NUBUS_9 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @macsonic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsonic_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i32 @sonic_close(%struct.net_device* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @free_irq(i64 %8, %struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IRQ_AUTO_3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @IRQ_NUBUS_9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.net_device* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @sonic_close(%struct.net_device*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
