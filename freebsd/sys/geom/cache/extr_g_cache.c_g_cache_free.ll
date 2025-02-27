; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/cache/extr_g_cache.c_g_cache_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_cache_softc = type { i32, i32, i32 }
%struct.g_cache_desc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_GCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_cache_softc*, %struct.g_cache_desc*)* @g_cache_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_cache_free(%struct.g_cache_softc* %0, %struct.g_cache_desc* %1) #0 {
  %3 = alloca %struct.g_cache_softc*, align 8
  %4 = alloca %struct.g_cache_desc*, align 8
  store %struct.g_cache_softc* %0, %struct.g_cache_softc** %3, align 8
  store %struct.g_cache_desc* %1, %struct.g_cache_desc** %4, align 8
  %5 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %5, i32 0, i32 2
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %13 = getelementptr inbounds %struct.g_cache_desc, %struct.g_cache_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @uma_zfree(i32 %11, i32 %14)
  %16 = load %struct.g_cache_desc*, %struct.g_cache_desc** %4, align 8
  %17 = load i32, i32* @M_GCACHE, align 4
  %18 = call i32 @free(%struct.g_cache_desc* %16, i32 %17)
  %19 = load %struct.g_cache_softc*, %struct.g_cache_softc** %3, align 8
  %20 = getelementptr inbounds %struct.g_cache_softc, %struct.g_cache_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @uma_zfree(i32, i32) #1

declare dso_local i32 @free(%struct.g_cache_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
