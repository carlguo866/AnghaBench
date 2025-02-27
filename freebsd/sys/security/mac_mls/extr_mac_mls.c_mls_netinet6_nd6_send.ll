; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_netinet6_nd6_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_netinet6_nd6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@MAC_MLS_TYPE_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.label*, %struct.mbuf*, %struct.label*)* @mls_netinet6_nd6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mls_netinet6_nd6_send(%struct.ifnet* %0, %struct.label* %1, %struct.mbuf* %2, %struct.label* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca %struct.mac_mls*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.label* %1, %struct.label** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store %struct.label* %3, %struct.label** %8, align 8
  %10 = load %struct.label*, %struct.label** %8, align 8
  %11 = call %struct.mac_mls* @SLOT(%struct.label* %10)
  store %struct.mac_mls* %11, %struct.mac_mls** %9, align 8
  %12 = load %struct.mac_mls*, %struct.mac_mls** %9, align 8
  %13 = load i32, i32* @MAC_MLS_TYPE_EQUAL, align 4
  %14 = call i32 @mls_set_effective(%struct.mac_mls* %12, i32 %13, i32 0, i32* null)
  ret void
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_set_effective(%struct.mac_mls*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
