; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_svn_txdelta_target_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_svn_txdelta_target_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpush_baton = type { i64, i32, i64, i64, i8*, i32*, i8*, i32, i32* }

@SVN_DELTA_WINDOW_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@tpush_write_handler = common dso_local global i32 0, align 4
@tpush_close_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_txdelta_target_push(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tpush_baton*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i8* @apr_palloc(i32* %11, i32 72)
  %13 = bitcast i8* %12 to %struct.tpush_baton*
  store %struct.tpush_baton* %13, %struct.tpush_baton** %9, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %16 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %15, i32 0, i32 8
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %19 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %22 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %25 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @SVN_DELTA_WINDOW_SIZE, align 4
  %28 = mul nsw i32 2, %27
  %29 = call i8* @apr_palloc(i32* %26, i32 %28)
  %30 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %31 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %33 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %35 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %38 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %40 = getelementptr inbounds %struct.tpush_baton, %struct.tpush_baton* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.tpush_baton*, %struct.tpush_baton** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32* @svn_stream_create(%struct.tpush_baton* %41, i32* %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* @tpush_write_handler, align 4
  %46 = call i32 @svn_stream_set_write(i32* %44, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @tpush_close_handler, align 4
  %49 = call i32 @svn_stream_set_close(i32* %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  ret i32* %50
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.tpush_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
