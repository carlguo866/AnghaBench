; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_md5_do_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_tcp_ipv6.c_tcp_v6_md5_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_md5sig_key = type { i32 }
%struct.sock = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcp_md5sig_key* (%struct.sock*, %struct.in6_addr*)* @tcp_v6_md5_do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcp_md5sig_key* @tcp_v6_md5_do_lookup(%struct.sock* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  ret %struct.tcp_md5sig_key* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
