; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w5300_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @w5300_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5300_get_link(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.w5300_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.w5300_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.w5300_priv* %6, %struct.w5300_priv** %4, align 8
  %7 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %8 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @gpio_is_valid(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %14 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpio_get_value(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.w5300_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
