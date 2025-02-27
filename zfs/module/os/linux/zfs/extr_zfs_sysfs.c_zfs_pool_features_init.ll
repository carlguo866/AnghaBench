; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_pool_features_init.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_sysfs.c_zfs_pool_features_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.kobject = type { i32 }

@SPA_FEATURES = common dso_local global i64 0, align 8
@pool_feature_show = common dso_local global i32 0, align 4
@ZFS_SYSFS_POOL_FEATURES = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.kobject*)* @zfs_pool_features_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_pool_features_init(%struct.TYPE_7__* %0, %struct.kobject* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load i64, i64* @SPA_FEATURES, align 8
  %10 = load i32, i32* @pool_feature_show, align 4
  %11 = call i32 @zfs_kobj_init(%struct.TYPE_7__* %8, i32 0, i64 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.kobject*, %struct.kobject** %5, align 8
  %19 = load i32, i32* @ZFS_SYSFS_POOL_FEATURES, align 4
  %20 = call i32 @zfs_kobj_add(%struct.TYPE_7__* %17, %struct.kobject* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @zfs_kobj_release(i32* %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SPA_FEATURES, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @spa_feature_table, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pool_feature_to_kobj(%struct.TYPE_7__* %34, i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %29

45:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %23, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @zfs_kobj_init(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i32 @zfs_kobj_add(%struct.TYPE_7__*, %struct.kobject*, i32) #1

declare dso_local i32 @zfs_kobj_release(i32*) #1

declare dso_local i32 @pool_feature_to_kobj(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
