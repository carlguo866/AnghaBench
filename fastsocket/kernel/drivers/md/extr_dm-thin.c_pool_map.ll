; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_2__*, %struct.pool* }
%struct.TYPE_2__ = type { i32 }
%struct.pool = type { i32 }
%struct.bio = type { i32 }
%union.map_info = type { i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*, %union.map_info*)* @pool_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_map(%struct.dm_target* %0, %struct.bio* %1, %union.map_info* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %union.map_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pool_c*, align 8
  %9 = alloca %struct.pool*, align 8
  %10 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %union.map_info* %2, %union.map_info** %6, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.pool_c*, %struct.pool_c** %12, align 8
  store %struct.pool_c* %13, %struct.pool_c** %8, align 8
  %14 = load %struct.pool_c*, %struct.pool_c** %8, align 8
  %15 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %14, i32 0, i32 1
  %16 = load %struct.pool*, %struct.pool** %15, align 8
  store %struct.pool* %16, %struct.pool** %9, align 8
  %17 = load %struct.pool*, %struct.pool** %9, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pool_c*, %struct.pool_c** %8, align 8
  %22 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.pool*, %struct.pool** %9, align 8
  %30 = getelementptr inbounds %struct.pool, %struct.pool* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
