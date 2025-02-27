; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_get_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZVOL_ZAP_OBJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_get_stats(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ZVOL_ZAP_OBJ, align 4
  %11 = call i32 @zap_lookup(i32* %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8, i32 1, i32* %8)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SET_ERROR(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dsl_prop_nvlist_add_uint64(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @KM_SLEEP, align 4
  %23 = call %struct.TYPE_5__* @kmem_alloc(i32 4, i32 %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ZVOL_OBJ, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = call i32 @dmu_object_info(i32* %24, i32 %25, %struct.TYPE_5__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dsl_prop_nvlist_add_uint64(i32* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %17
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = call i32 @kmem_free(%struct.TYPE_5__* %38, i32 4)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
