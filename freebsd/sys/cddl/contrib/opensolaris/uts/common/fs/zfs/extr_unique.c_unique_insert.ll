; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_unique.c_unique_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_unique.c_unique_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@unique_mtx = common dso_local global i32 0, align 4
@UNIQUE_MASK = common dso_local global i32 0, align 4
@unique_avl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unique_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @KM_SLEEP, align 4
  %6 = call %struct.TYPE_5__* @kmem_alloc(i32 4, i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = call i32 @mutex_enter(i32* @unique_mtx)
  br label %11

11:                                               ; preds = %30, %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @UNIQUE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = call i64 @avl_find(i32* @unique_avl, %struct.TYPE_5__* %25, i32* %3)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %16, %11
  %29 = phi i1 [ true, %16 ], [ true, %11 ], [ %27, %24 ]
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = call i32 @mutex_exit(i32* @unique_mtx)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @random_get_pseudo_bytes(i8* %34, i32 4)
  %36 = load i32, i32* @UNIQUE_MASK, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = call i32 @mutex_enter(i32* @unique_mtx)
  br label %11

42:                                               ; preds = %28
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @avl_insert(i32* @unique_avl, %struct.TYPE_5__* %43, i32 %44)
  %46 = call i32 @mutex_exit(i32* @unique_mtx)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_5__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @avl_find(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @random_get_pseudo_bytes(i8*, i32) #1

declare dso_local i32 @avl_insert(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
