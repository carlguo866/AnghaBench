; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_ip_fil_freebsd.c_ipf_event_dereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ipfilter/netinet/extr_ip_fil_freebsd.c_ipf_event_dereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ipf_arrivetag = common dso_local global i32* null, align 8
@ifnet_arrival_event = common dso_local global i32 0, align 4
@V_ipf_departtag = common dso_local global i32* null, align 8
@ifnet_departure_event = common dso_local global i32 0, align 4
@V_ipf_clonetag = common dso_local global i32* null, align 8
@if_clone_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipf_event_dereg() #0 {
  %1 = load i32*, i32** @V_ipf_arrivetag, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @ifnet_arrival_event, align 4
  %5 = load i32*, i32** @V_ipf_arrivetag, align 8
  %6 = call i32 @EVENTHANDLER_DEREGISTER(i32 %4, i32* %5)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i32*, i32** @V_ipf_departtag, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @ifnet_departure_event, align 4
  %12 = load i32*, i32** @V_ipf_departtag, align 8
  %13 = call i32 @EVENTHANDLER_DEREGISTER(i32 %11, i32* %12)
  br label %14

14:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
