; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_remap_impl_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_remap_impl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @dbuf_remap_impl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbuf_remap_impl_callback(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32* @dmu_objset_spa(i32* %18)
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @spa_get_dsl(i32* %23)
  %25 = call i32 @dsl_pool_sync_context(i32 %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32* @spa_meta_objset(i32* %28)
  %30 = icmp eq i32* %27, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @spa_vdev_indirect_mark_obsolete(i32* %32, i32 %33, i32 %34, i32 %35, i32* %36)
  br label %49

38:                                               ; preds = %4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @dmu_objset_ds(i32* %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @dsl_dataset_block_remapped(i32 %40, i32 %41, i32 %42, i32 %43, i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32* @dmu_objset_spa(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_sync_context(i32) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32* @spa_meta_objset(i32*) #1

declare dso_local i32 @spa_vdev_indirect_mark_obsolete(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_block_remapped(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
