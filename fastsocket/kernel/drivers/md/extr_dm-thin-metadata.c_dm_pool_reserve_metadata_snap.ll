; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_reserve_metadata_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_reserve_metadata_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_reserve_metadata_snap(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca %struct.dm_pool_metadata*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %6, i32 0, i32 0
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %15 = call i32 @__reserve_metadata_snap(%struct.dm_pool_metadata* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %18 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %17, i32 0, i32 0
  %19 = call i32 @up_write(i32* %18)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__reserve_metadata_snap(%struct.dm_pool_metadata*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
