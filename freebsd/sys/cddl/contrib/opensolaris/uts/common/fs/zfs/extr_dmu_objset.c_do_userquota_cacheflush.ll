; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_do_userquota_cacheflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_do_userquota_cacheflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@DMU_USERUSED_OBJECT = common dso_local global i32 0, align 4
@DMU_GROUPUSED_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*)* @do_userquota_cacheflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_userquota_cacheflush(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @dmu_tx_is_syncing(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  store i8* null, i8** %7, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = call %struct.TYPE_9__* @avl_destroy_nodes(i32* %14, i8** %7)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %12
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = call i32 @mutex_enter(i32* %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load i32, i32* @DMU_USERUSED_OBJECT, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @zap_increment_int(%struct.TYPE_11__* %21, i32 %22, i32 %25, i32 %28, i32* %29)
  %31 = call i32 @VERIFY0(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @mutex_exit(i32* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i32 @kmem_free(%struct.TYPE_9__* %35, i32 8)
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = call i32 @avl_destroy(i32* %39)
  store i8* null, i8** %7, align 8
  br label %41

41:                                               ; preds = %46, %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call %struct.TYPE_9__* @avl_destroy_nodes(i32* %43, i8** %7)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %8, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @mutex_enter(i32* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* @DMU_GROUPUSED_OBJECT, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @zap_increment_int(%struct.TYPE_11__* %50, i32 %51, i32 %54, i32 %57, i32* %58)
  %60 = call i32 @VERIFY0(i32 %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = call i32 @mutex_exit(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = call i32 @kmem_free(%struct.TYPE_9__* %64, i32 8)
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @avl_destroy(i32* %68)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local %struct.TYPE_9__* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_increment_int(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @avl_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
