; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_mbuf_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_rss_mbuf_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_rss_mbuf_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_rss_mbuf_hash(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %7 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %15, i32* %22, align 4
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
