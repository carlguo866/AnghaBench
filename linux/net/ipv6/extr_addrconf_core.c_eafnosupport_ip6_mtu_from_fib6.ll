; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf_core.c_eafnosupport_ip6_mtu_from_fib6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf_core.c_eafnosupport_ip6_mtu_from_fib6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_result = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_result*, %struct.in6_addr*, %struct.in6_addr*)* @eafnosupport_ip6_mtu_from_fib6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eafnosupport_ip6_mtu_from_fib6(%struct.fib6_result* %0, %struct.in6_addr* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.fib6_result*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %struct.fib6_result* %0, %struct.fib6_result** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
