; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_io_overlaps_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_io_overlaps_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*, %struct.bio*)* @io_overlaps_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_overlaps_chunk(%struct.dm_snapshot* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %10 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SECTOR_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = icmp eq i32 %8, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
