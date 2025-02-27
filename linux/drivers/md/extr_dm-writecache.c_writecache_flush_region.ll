; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_flush_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i64 }

@BITMAP_GRANULARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, i8*, i64)* @writecache_flush_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_flush_region(%struct.dm_writecache* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_writecache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.dm_writecache*, %struct.dm_writecache** %4, align 8
  %8 = call i32 @WC_MODE_PMEM(%struct.dm_writecache* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.dm_writecache*, %struct.dm_writecache** %4, align 8
  %13 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %11 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = load i32, i32* @BITMAP_GRANULARITY, align 4
  %20 = sext i32 %19 to i64
  %21 = sdiv i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = load %struct.dm_writecache*, %struct.dm_writecache** %4, align 8
  %24 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__set_bit(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
