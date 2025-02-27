; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tucookie_release_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_tucookie_release_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_tucookie = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@WNT_RELEASE = common dso_local global i32 0, align 4
@nstat_malloc_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nstat_tucookie*, i32)* @nstat_tucookie_release_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nstat_tucookie_release_internal(%struct.nstat_tucookie* %0, i32 %1) #0 {
  %3 = alloca %struct.nstat_tucookie*, align 8
  %4 = alloca i32, align 4
  store %struct.nstat_tucookie* %0, %struct.nstat_tucookie** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %3, align 8
  %6 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @SOCK_PROTO(i32 %9)
  %11 = load i64, i64* @IPPROTO_UDP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %3, align 8
  %15 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @OSDecrementAtomic(i32* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %3, align 8
  %21 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* @WNT_RELEASE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @in_pcb_checkstate(%struct.TYPE_2__* %22, i32 %23, i32 %24)
  %26 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %3, align 8
  %27 = load i32, i32* @nstat_malloc_tag, align 4
  %28 = call i32 @OSFree(%struct.nstat_tucookie* %26, i32 8, i32 %27)
  ret void
}

declare dso_local i64 @SOCK_PROTO(i32) #1

declare dso_local i32 @OSDecrementAtomic(i32*) #1

declare dso_local i32 @in_pcb_checkstate(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @OSFree(%struct.nstat_tucookie*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
