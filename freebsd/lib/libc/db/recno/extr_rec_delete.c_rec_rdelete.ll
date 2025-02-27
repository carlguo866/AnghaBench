; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_delete.c_rec_rdelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_delete.c_rec_rdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@SDELETE = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@MPOOL_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @rec_rdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_rdelete(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SDELETE, align 4
  %12 = call %struct.TYPE_7__* @__rec_search(%struct.TYPE_8__* %9, i32 %10, i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @RET_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__rec_dleaf(%struct.TYPE_8__* %20, i32* %21, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RET_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @mpool_put(i32 %32, i32* %33, i32 0)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %16
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @MPOOL_DIRTY, align 4
  %42 = call i32 @mpool_put(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %29, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_7__* @__rec_search(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @__rec_dleaf(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @mpool_put(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
