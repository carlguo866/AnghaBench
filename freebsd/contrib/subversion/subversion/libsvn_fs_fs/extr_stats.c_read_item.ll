; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_read_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__**, %struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32*)* @read_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_item(%struct.TYPE_8__** %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.TYPE_8__* @svn_stringbuf_create_ensure(i64 %14, i32* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @svn_io_file_aligned_seek(i32 %31, i32 %34, i32* null, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @svn_io_file_read_full2(i32 %43, i64* %46, i64 %49, i32* null, i32* null, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %54, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_8__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_aligned_seek(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i64*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
