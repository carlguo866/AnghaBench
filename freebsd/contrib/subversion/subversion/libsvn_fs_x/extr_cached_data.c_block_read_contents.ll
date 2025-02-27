; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_9__*, i32, i32*)* @block_read_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_contents(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = bitcast %struct.TYPE_8__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.TYPE_10__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @svn_fs_x__is_packed_rev(i32* %23, i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @read_rep_header(i32** %16, i32* %32, i32* %33, %struct.TYPE_8__* %13, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %16, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @init_rep_state(%struct.TYPE_10__* %14, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @cache_windows(i32* %15, i32* %44, %struct.TYPE_10__* %14, i32 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @svn_fs_x__is_packed_rev(i32*, i64) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @read_rep_header(i32**, i32*, i32*, %struct.TYPE_8__*, i32*) #2

declare dso_local i32 @init_rep_state(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cache_windows(i32*, i32*, %struct.TYPE_10__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
