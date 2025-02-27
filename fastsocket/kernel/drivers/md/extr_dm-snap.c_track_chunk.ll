; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_track_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_track_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snap_tracked_chunk = type { i32, i32 }
%struct.dm_snapshot = type { i32, i32*, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_snap_tracked_chunk* (%struct.dm_snapshot*, i32)* @track_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_snap_tracked_chunk* @track_chunk(%struct.dm_snapshot* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_snap_tracked_chunk*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %7 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_NOIO, align 4
  %10 = call %struct.dm_snap_tracked_chunk* @mempool_alloc(i32 %8, i32 %9)
  store %struct.dm_snap_tracked_chunk* %10, %struct.dm_snap_tracked_chunk** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %5, align 8
  %13 = getelementptr inbounds %struct.dm_snap_tracked_chunk, %struct.dm_snap_tracked_chunk* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.dm_snap_tracked_chunk, %struct.dm_snap_tracked_chunk* %17, i32 0, i32 0
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %20 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @DM_TRACKED_CHUNK_HASH(i32 %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @hlist_add_head(i32* %18, i32* %24)
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %27 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.dm_snap_tracked_chunk*, %struct.dm_snap_tracked_chunk** %5, align 8
  ret %struct.dm_snap_tracked_chunk* %29
}

declare dso_local %struct.dm_snap_tracked_chunk* @mempool_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @DM_TRACKED_CHUNK_HASH(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
