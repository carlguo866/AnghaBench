; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___highest_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___highest_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { i32, %struct.dm_pool_metadata* }
%struct.dm_pool_metadata = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_thin_device*, i32*)* @__highest_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__highest_block(%struct.dm_thin_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_thin_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_pool_metadata*, align 8
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %11 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %10, i32 0, i32 1
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %11, align 8
  store %struct.dm_pool_metadata* %12, %struct.dm_pool_metadata** %9, align 8
  %13 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %9, align 8
  %14 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %13, i32 0, i32 2
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %9, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %19 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %18, i32 0, i32 0
  %20 = call i32 @dm_btree_lookup(i32* %14, i32 %17, i32* %19, i32* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @le64_to_cpu(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %9, align 8
  %29 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %28, i32 0, i32 0
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @dm_btree_find_highest_key(i32* %29, i32 %30, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @dm_btree_lookup(i32*, i32, i32*, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dm_btree_find_highest_key(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
