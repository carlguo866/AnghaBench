; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__serialize_raw_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__serialize_raw_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__serialize_raw_window(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 16, %18
  %20 = add i64 %19, 16
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @svn_temp_serializer__init(%struct.TYPE_8__* %14, i32 16, i64 %20, i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = bitcast i32* %26 to i8**
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @svn_temp_serializer__add_leaf(i32* %23, i8** %27, i64 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = call %struct.TYPE_7__* @svn_temp_serializer__get(i32* %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32* @svn_temp_serializer__init(%struct.TYPE_8__*, i32, i64, i32*) #1

declare dso_local i32 @svn_temp_serializer__add_leaf(i32*, i8**, i64) #1

declare dso_local %struct.TYPE_7__* @svn_temp_serializer__get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
