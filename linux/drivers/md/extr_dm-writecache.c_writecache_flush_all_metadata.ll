; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_all_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_all_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*)* @writecache_flush_all_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_flush_all_metadata(%struct.dm_writecache* %0) #0 {
  %2 = alloca %struct.dm_writecache*, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %2, align 8
  %3 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %4 = call i32 @WC_MODE_PMEM(%struct.dm_writecache* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %8 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dm_writecache*, %struct.dm_writecache** %2, align 8
  %11 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %9, i32 -1, i32 %12)
  br label %14

14:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
