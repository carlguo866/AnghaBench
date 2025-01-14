; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filestat.c_apr_file_info_get_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_filestat.c_apr_file_info_get_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_INCOMPLETE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @apr_file_info_get_locked(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = call i64 @apr_file_flush_locked(%struct.TYPE_8__* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @APR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %58

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @fstat(i32 %26, i32* %8)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @fill_out_finfo(%struct.TYPE_7__* %40, i32* %8, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = load i64, i64* @APR_INCOMPLETE, align 8
  br label %54

52:                                               ; preds = %29
  %53 = load i64, i64* @APR_SUCCESS, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %4, align 8
  br label %58

56:                                               ; preds = %23
  %57 = load i64, i64* @errno, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %54, %20
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @apr_file_flush_locked(%struct.TYPE_8__*) #1

declare dso_local i64 @fstat(i32, i32*) #1

declare dso_local i32 @fill_out_finfo(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
