; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c___bond_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c___bond_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.bonding = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown bonding mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @__bond_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bond_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bonding*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.bonding* @netdev_priv(%struct.net_device* %7)
  store %struct.bonding* %8, %struct.bonding** %6, align 8
  %9 = load %struct.bonding*, %struct.bonding** %6, align 8
  %10 = call i64 @bond_should_override_tx_queue(%struct.bonding* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.bonding*, %struct.bonding** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @bond_slave_override(%struct.bonding* %13, %struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %12, %2
  %20 = load %struct.bonding*, %struct.bonding** %6, align 8
  %21 = call i32 @BOND_MODE(%struct.bonding* %20)
  switch i32 %21, label %46 [
    i32 130, label %22
    i32 133, label %26
    i32 134, label %30
    i32 128, label %30
    i32 131, label %34
    i32 132, label %38
    i32 129, label %42
  ]

22:                                               ; preds = %19
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call i32 @bond_xmit_roundrobin(%struct.sk_buff* %23, %struct.net_device* %24)
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 @bond_xmit_activebackup(%struct.sk_buff* %27, %struct.net_device* %28)
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %19, %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @bond_3ad_xor_xmit(%struct.sk_buff* %31, %struct.net_device* %32)
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @bond_xmit_broadcast(%struct.sk_buff* %35, %struct.net_device* %36)
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %19
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @bond_alb_xmit(%struct.sk_buff* %39, %struct.net_device* %40)
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %19
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @bond_tlb_xmit(%struct.sk_buff* %43, %struct.net_device* %44)
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %19
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.bonding*, %struct.bonding** %6, align 8
  %49 = call i32 @BOND_MODE(%struct.bonding* %48)
  %50 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @WARN_ON_ONCE(i32 1)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @bond_tx_drop(%struct.net_device* %52, %struct.sk_buff* %53)
  %55 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.bonding* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bond_should_override_tx_queue(%struct.bonding*) #1

declare dso_local i32 @bond_slave_override(%struct.bonding*, %struct.sk_buff*) #1

declare dso_local i32 @BOND_MODE(%struct.bonding*) #1

declare dso_local i32 @bond_xmit_roundrobin(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_xmit_activebackup(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_3ad_xor_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_xmit_broadcast(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_alb_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @bond_tlb_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bond_tx_drop(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
