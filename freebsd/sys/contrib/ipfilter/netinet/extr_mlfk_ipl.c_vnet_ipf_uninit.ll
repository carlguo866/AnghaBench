; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_vnet_ipf_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_mlfk_ipl.c_vnet_ipf_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@V_ipfmain = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@curvnet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vnet_ipf_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnet_ipf_uninit() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_ipfmain, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %20

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_ipfmain, i32 0, i32 0), align 8
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = call i64 @ipfdetach(%struct.TYPE_4__* @V_ipfmain)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %20

11:                                               ; preds = %7
  store i32 -2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @V_ipfmain, i32 0, i32 0), align 8
  %12 = call i32 @ipf_destroy_all(%struct.TYPE_4__* @V_ipfmain)
  %13 = load i32, i32* @curvnet, align 4
  %14 = call i32 @IS_DEFAULT_VNET(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call i32 (...) @ipf_event_dereg()
  %18 = call i32 (...) @ipf_pfil_unhook()
  br label %19

19:                                               ; preds = %16, %11
  br label %20

20:                                               ; preds = %3, %10, %19, %4
  ret void
}

declare dso_local i64 @ipfdetach(%struct.TYPE_4__*) #1

declare dso_local i32 @ipf_destroy_all(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_DEFAULT_VNET(i32) #1

declare dso_local i32 @ipf_event_dereg(...) #1

declare dso_local i32 @ipf_pfil_unhook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
