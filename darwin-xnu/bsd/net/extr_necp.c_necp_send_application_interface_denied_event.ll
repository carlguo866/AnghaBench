; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_send_application_interface_denied_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_send_application_interface_denied_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kev_netpolicy_ifdenied = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@KEV_NETPOLICY_IFDENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @necp_send_application_interface_denied_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_send_application_interface_denied_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kev_netpolicy_ifdenied, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @bzero(%struct.kev_netpolicy_ifdenied* %7, i32 12)
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @uuid_copy(i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @KEV_NETPOLICY_IFDENIED, align 4
  %20 = getelementptr inbounds %struct.kev_netpolicy_ifdenied, %struct.kev_netpolicy_ifdenied* %7, i32 0, i32 0
  %21 = call i32 @netpolicy_post_msg(i32 %19, %struct.TYPE_2__* %20, i32 12)
  ret void
}

declare dso_local i32 @bzero(%struct.kev_netpolicy_ifdenied*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @netpolicy_post_msg(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
