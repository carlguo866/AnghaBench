; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_..br_private.h_br_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_..br_private.h_br_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, i32, i32, i32*, %struct.netlink_ext_ack*)* @br_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_vlan_add(%struct.net_bridge* %0, i32 %1, i32 %2, i32* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %11 = load i32*, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
