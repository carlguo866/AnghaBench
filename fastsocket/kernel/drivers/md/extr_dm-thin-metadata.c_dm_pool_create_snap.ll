; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_create_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_create_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_create_snap(%struct.dm_pool_metadata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @__create_snap(%struct.dm_pool_metadata* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %24 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %23, i32 0, i32 0
  %25 = call i32 @up_write(i32* %24)
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__create_snap(%struct.dm_pool_metadata*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
