; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_ip6t_get_target_c.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_ip6t_get_target_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_entry_target = type { i32 }
%struct.ip6t_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xt_entry_target* (%struct.ip6t_entry*)* @ip6t_get_target_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xt_entry_target* @ip6t_get_target_c(%struct.ip6t_entry* %0) #0 {
  %2 = alloca %struct.ip6t_entry*, align 8
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %2, align 8
  %3 = load %struct.ip6t_entry*, %struct.ip6t_entry** %2, align 8
  %4 = call %struct.xt_entry_target* @ip6t_get_target(%struct.ip6t_entry* %3)
  ret %struct.xt_entry_target* %4
}

declare dso_local %struct.xt_entry_target* @ip6t_get_target(%struct.ip6t_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
