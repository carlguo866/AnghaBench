; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_superblock_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_superblock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32 }
%struct.dm_block = type { i32 }

@THIN_SUPERBLOCK_LOCATION = common dso_local global i32 0, align 4
@sb_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, %struct.dm_block**)* @superblock_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superblock_lock(%struct.dm_pool_metadata* %0, %struct.dm_block** %1) #0 {
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca %struct.dm_block**, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  store %struct.dm_block** %1, %struct.dm_block*** %4, align 8
  %5 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %6 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @THIN_SUPERBLOCK_LOCATION, align 4
  %9 = load %struct.dm_block**, %struct.dm_block*** %4, align 8
  %10 = call i32 @dm_bm_write_lock(i32 %7, i32 %8, i32* @sb_validator, %struct.dm_block** %9)
  ret i32 %10
}

declare dso_local i32 @dm_bm_write_lock(i32, i32, i32*, %struct.dm_block**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
