; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_mark_sectors_bypassed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_stats.c_bch_mark_sectors_bypassed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cached_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_mark_sectors_bypassed(%struct.cache_set* %0, %struct.cached_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.cached_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.cached_dev* %1, %struct.cached_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cached_dev*, %struct.cached_dev** %5, align 8
  %9 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = call i32 @atomic_add(i32 %7, i32* %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %15 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = call i32 @atomic_add(i32 %13, i32* %17)
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
