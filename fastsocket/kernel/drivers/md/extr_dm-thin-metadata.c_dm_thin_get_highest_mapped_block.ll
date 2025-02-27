; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_thin_get_highest_mapped_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_thin_get_highest_mapped_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { %struct.dm_pool_metadata* }
%struct.dm_pool_metadata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_thin_get_highest_mapped_block(%struct.dm_thin_device* %0, i32* %1) #0 {
  %3 = alloca %struct.dm_thin_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_pool_metadata*, align 8
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dm_thin_device*, %struct.dm_thin_device** %3, align 8
  %10 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %9, i32 0, i32 0
  %11 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %10, align 8
  store %struct.dm_pool_metadata* %11, %struct.dm_pool_metadata** %6, align 8
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %6, align 8
  %13 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %6, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.dm_thin_device*, %struct.dm_thin_device** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @__highest_block(%struct.dm_thin_device* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %6, align 8
  %25 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__highest_block(%struct.dm_thin_device*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
