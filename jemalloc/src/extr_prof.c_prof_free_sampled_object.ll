; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_free_sampled_object.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof.c_prof_free_sampled_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_free_sampled_object(i32* %0, i8* %1, i64 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @tsd_tsdn(i32* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @malloc_mutex_lock(i32 %10, i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %37
  store i64 %42, i64* %40, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = call i32 @prof_try_log(i32* %43, i8* %44, i64 %45, %struct.TYPE_10__* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @tsd_tsdn(i32* %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = call i64 @prof_tctx_should_destroy(i32 %49, %struct.TYPE_10__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %4
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = call i32 @prof_tctx_destroy(i32* %54, %struct.TYPE_10__* %55)
  br label %66

57:                                               ; preds = %4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @tsd_tsdn(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @malloc_mutex_unlock(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %57, %53
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @prof_try_log(i32*, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i64 @prof_tctx_should_destroy(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @prof_tctx_destroy(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
