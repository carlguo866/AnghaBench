; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_net_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p net_dev %p skb %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"NETTX: skb %p sending %d bytes to radio\0A\00", align 1
@I2400M_PT_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"(i2400m %p net_dev %p skb %p) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, %struct.net_device*, %struct.sk_buff*)* @i2400m_net_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_net_tx(%struct.i2400m* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load %struct.device*, %struct.device** %8, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %12, %struct.net_device* %13, %struct.sk_buff* %14)
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @netif_trans_update(%struct.net_device* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @i2400m_tx_prep_header(%struct.sk_buff* %18)
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @d_printf(i32 3, %struct.device* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %21, i32 %24)
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @d_dump(i32 4, %struct.device* %26, i32 %29, i32 %32)
  %34 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I2400M_PT_DATA, align 4
  %42 = call i32 @i2400m_tx(%struct.i2400m* %34, i32 %37, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @d_fnend(i32 3, %struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %44, %struct.net_device* %45, %struct.sk_buff* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @i2400m_tx_prep_header(%struct.sk_buff*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, %struct.sk_buff*, i32) #1

declare dso_local i32 @d_dump(i32, %struct.device*, i32, i32) #1

declare dso_local i32 @i2400m_tx(%struct.i2400m*, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.net_device*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
