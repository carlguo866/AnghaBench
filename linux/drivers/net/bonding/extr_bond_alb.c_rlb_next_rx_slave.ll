; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_next_rx_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_next_rx_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32 }
%struct.bonding = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slave* (%struct.bonding*)* @rlb_next_rx_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slave* @rlb_next_rx_slave(%struct.bonding* %0) #0 {
  %2 = alloca %struct.bonding*, align 8
  %3 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.bonding*, %struct.bonding** %2, align 8
  %7 = call %struct.slave* @__rlb_next_rx_slave(%struct.bonding* %6)
  store %struct.slave* %7, %struct.slave** %3, align 8
  %8 = call i32 (...) @rcu_read_unlock()
  %9 = load %struct.slave*, %struct.slave** %3, align 8
  ret %struct.slave* %9
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.slave* @__rlb_next_rx_slave(%struct.bonding*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
