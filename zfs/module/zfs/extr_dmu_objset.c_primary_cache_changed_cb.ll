; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_primary_cache_changed_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_primary_cache_changed_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ZFS_CACHE_ALL = common dso_local global i64 0, align 8
@ZFS_CACHE_NONE = common dso_local global i64 0, align 8
@ZFS_CACHE_METADATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @primary_cache_changed_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @primary_cache_changed_cb(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ZFS_CACHE_ALL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ZFS_CACHE_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ZFS_CACHE_METADATA, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = phi i1 [ true, %11 ], [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
