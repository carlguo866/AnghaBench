; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_ip_rpcb_pxy.c_ipf_p_rpcb_main_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_ip_rpcb_pxy.c_ipf_p_rpcb_main_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rpcb_proxy_init = common dso_local global i32 0, align 4
@rpcbfr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipf_p_rpcb_main_unload() #0 {
  %1 = load i32, i32* @rpcb_proxy_init, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @MUTEX_DESTROY(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpcbfr, i32 0, i32 0))
  store i32 0, i32* @rpcb_proxy_init, align 4
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @MUTEX_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
