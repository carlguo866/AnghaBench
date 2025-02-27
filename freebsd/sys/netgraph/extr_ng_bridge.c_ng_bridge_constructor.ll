; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_constructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@M_NETGRAPH_BRIDGE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MIN_BUCKETS = common dso_local global i32 0, align 4
@DEFAULT_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@DEFAULT_MAX_STALENESS = common dso_local global i32 0, align 4
@DEFAULT_MIN_STABLE_AGE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ng_bridge_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ng_bridge_constructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bridge_constructor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = load i32, i32* @M_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call i8* @malloc(i32 40, i32 %4, i32 %7)
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = call i32 @ng_callout_init(i32* %11)
  %13 = load i32, i32* @MIN_BUCKETS, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc(i32 %16, i32 %17, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @MIN_BUCKETS, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @MIN_BUCKETS, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @DEFAULT_LOOP_TIMEOUT, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @DEFAULT_MAX_STALENESS, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @DEFAULT_MIN_STABLE_AGE, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @NG_NODE_FORCE_WRITER(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = call i32 @NG_NODE_SET_PRIVATE(i32 %48, %struct.TYPE_5__* %49)
  %51 = load i32, i32* %2, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @hz, align 4
  %58 = load i32, i32* @ng_bridge_timeout, align 4
  %59 = call i32 @ng_callout(i32* %55, i32 %56, i32* null, i32 %57, i32 %58, i32* null, i32 0)
  ret i32 0
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ng_callout_init(i32*) #1

declare dso_local i32 @NG_NODE_FORCE_WRITER(i32) #1

declare dso_local i32 @NG_NODE_SET_PRIVATE(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ng_callout(i32*, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
