; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_blocks_are_unmapped_or_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_blocks_are_unmapped_or_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, i32, i32, i32*)* @blocks_are_unmapped_or_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blocks_are_unmapped_or_clean(%struct.dm_cache_metadata* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_cache_metadata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %11 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @blocks_are_clean_separate_dirty(%struct.dm_cache_metadata* %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @blocks_are_clean_combined_dirty(%struct.dm_cache_metadata* %20, i32 %21, i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @blocks_are_clean_separate_dirty(%struct.dm_cache_metadata*, i32, i32, i32*) #1

declare dso_local i32 @blocks_are_clean_combined_dirty(%struct.dm_cache_metadata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
