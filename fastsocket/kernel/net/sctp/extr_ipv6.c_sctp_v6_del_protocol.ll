; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_del_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_del_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sctpv6_protocol = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@sctp_inet6addr_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_v6_del_protocol() #0 {
  %1 = load i32, i32* @IPPROTO_SCTP, align 4
  %2 = call i32 @inet6_del_protocol(i32* @sctpv6_protocol, i32 %1)
  %3 = call i32 @unregister_inet6addr_notifier(i32* @sctp_inet6addr_notifier)
  ret void
}

declare dso_local i32 @inet6_del_protocol(i32*, i32) #1

declare dso_local i32 @unregister_inet6addr_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
