; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tsd.c_tsd_data_init_nocleanup.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_tsd.c_tsd_data_init_nocleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@tsd_state_reincarnated = common dso_local global i64 0, align 8
@tsd_state_minimal_initialized = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @tsd_data_init_nocleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsd_data_init_nocleanup(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @tsd_state_reincarnated, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i32 @tsd_rtree_ctxp_get_unsafe(%struct.TYPE_8__* %18)
  %20 = call i32 @rtree_ctx_data_init(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i32* @tsd_arenas_tdata_bypassp_get(%struct.TYPE_8__* %21)
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i32* @tsd_tcache_enabledp_get_unsafe(%struct.TYPE_8__* %23)
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32* @tsd_reentrancy_levelp_get(%struct.TYPE_8__* %25)
  store i32 1, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = call i32 @assert_tsd_data_cleanup_done(%struct.TYPE_8__* %27)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rtree_ctx_data_init(i32) #1

declare dso_local i32 @tsd_rtree_ctxp_get_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32* @tsd_arenas_tdata_bypassp_get(%struct.TYPE_8__*) #1

declare dso_local i32* @tsd_tcache_enabledp_get_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32* @tsd_reentrancy_levelp_get(%struct.TYPE_8__*) #1

declare dso_local i32 @assert_tsd_data_cleanup_done(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
