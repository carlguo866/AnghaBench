; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_get_vfs_flag_unmounted.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vfsops.c_zfs_get_vfs_flag_unmounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_vfs_flag_unmounted(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load i32, i32* @B_FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = call i64 @dmu_objset_type(%struct.TYPE_8__* %6)
  %8 = load i64, i64* @DMU_OST_ZFS, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i32 @mutex_enter(i32* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call %struct.TYPE_7__* @dmu_objset_get_user(%struct.TYPE_8__* %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @B_TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %19, %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @mutex_exit(i32* %28)
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dmu_objset_type(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_7__* @dmu_objset_get_user(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
