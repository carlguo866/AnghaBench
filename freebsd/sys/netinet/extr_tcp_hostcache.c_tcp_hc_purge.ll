; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hostcache.c_tcp_hc_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.vnet = type { i32 }

@V_tcp_hostcache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_tcp_hc_callout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tcp_hc_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_hc_purge(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vnet*
  %6 = call i32 @CURVNET_SET(%struct.vnet* %5)
  store i32 0, i32* %3, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 1), align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @tcp_hc_purge_internal(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_hostcache, i32 0, i32 0), align 8
  %14 = load i32, i32* @hz, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @callout_reset(i32* @V_tcp_hc_callout, i32 %15, void (i8*)* @tcp_hc_purge, i8* %16)
  %18 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @CURVNET_SET(%struct.vnet*) #1

declare dso_local i32 @tcp_hc_purge_internal(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i8*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
