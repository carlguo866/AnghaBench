; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_netinet_firewall_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_netinet_firewall_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@MAC_LOMAC_TYPE_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, %struct.label*)* @lomac_netinet_firewall_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_netinet_firewall_send(%struct.mbuf* %0, %struct.label* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.label*, align 8
  %5 = alloca %struct.mac_lomac*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.label* %1, %struct.label** %4, align 8
  %6 = load %struct.label*, %struct.label** %4, align 8
  %7 = call %struct.mac_lomac* @SLOT(%struct.label* %6)
  store %struct.mac_lomac* %7, %struct.mac_lomac** %5, align 8
  %8 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %9 = load i32, i32* @MAC_LOMAC_TYPE_EQUAL, align 4
  %10 = call i32 @lomac_set_single(%struct.mac_lomac* %8, i32 %9, i32 0)
  ret void
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_set_single(%struct.mac_lomac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
