; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64 }

@DMU_OST_META = common dso_local global i64 0, align 8
@ZFS_PROP_TYPE = common dso_local global i32 0, align 4
@ZFS_PROP_USERACCOUNTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_objset_stats(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMU_OST_META, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i1 [ true, %2 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @dsl_dataset_stats(i32* %28, i32* %29)
  br label %31

31:                                               ; preds = %25, %17
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @ZFS_PROP_TYPE, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dsl_prop_nvlist_add_uint64(i32* %32, i32 %33, i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @ZFS_PROP_USERACCOUNTING, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = call i64 @dmu_objset_userspace_present(%struct.TYPE_6__* %42)
  %44 = call i32 @dsl_prop_nvlist_add_uint64(i32* %40, i32 %41, i64 %43)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_dataset_stats(i32*, i32*) #1

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @dmu_objset_userspace_present(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
