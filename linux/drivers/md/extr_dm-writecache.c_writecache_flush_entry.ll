; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32 }
%struct.wc_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, %struct.wc_entry*)* @writecache_flush_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_flush_entry(%struct.dm_writecache* %0, %struct.wc_entry* %1) #0 {
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.wc_entry*, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %3, align 8
  store %struct.wc_entry* %1, %struct.wc_entry** %4, align 8
  %5 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %6 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %7 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %8 = call i32 @memory_entry(%struct.dm_writecache* %6, %struct.wc_entry* %7)
  %9 = call i32 @writecache_flush_region(%struct.dm_writecache* %5, i32 %8, i32 4)
  %10 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %11 = call i64 @WC_MODE_PMEM(%struct.dm_writecache* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %15 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %16 = load %struct.wc_entry*, %struct.wc_entry** %4, align 8
  %17 = call i32 @memory_data(%struct.dm_writecache* %15, %struct.wc_entry* %16)
  %18 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %19 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writecache_flush_region(%struct.dm_writecache* %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @writecache_flush_region(%struct.dm_writecache*, i32, i32) #1

declare dso_local i32 @memory_entry(%struct.dm_writecache*, %struct.wc_entry*) #1

declare dso_local i64 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @memory_data(%struct.dm_writecache*, %struct.wc_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
