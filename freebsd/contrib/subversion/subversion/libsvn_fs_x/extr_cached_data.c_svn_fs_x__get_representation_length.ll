; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_representation_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_representation_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SVN_FS_X__ITEM_TYPE_FILE_REP = common dso_local global i64 0, align 8
@SVN_FS_X__ITEM_TYPE_DIR_PROPS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_representation_length(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_12__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = bitcast %struct.TYPE_11__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.TYPE_13__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SVN_FS_X__ITEM_TYPE_FILE_REP, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVN_FS_X__ITEM_TYPE_DIR_PROPS, align 8
  %28 = icmp sle i64 %26, %27
  br label %29

29:                                               ; preds = %23, %6
  %30 = phi i1 [ false, %6 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_fs_x__get_revnum(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @svn_fs_x__is_packed_rev(i32* %47, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @read_rep_header(i32** %15, i32* %59, i32* %60, %struct.TYPE_11__* %13, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @init_rep_state(%struct.TYPE_13__* %14, i32* %64, i32* %65, i32* %66, %struct.TYPE_12__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @cache_windows(i32* %74, i32* %75, %struct.TYPE_13__* %14, i32 -1, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_fs_x__get_revnum(i32) #2

declare dso_local i32 @svn_fs_x__is_packed_rev(i32*, i32) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @read_rep_header(i32**, i32*, i32*, %struct.TYPE_11__*, i32*) #2

declare dso_local i32 @init_rep_state(%struct.TYPE_13__*, i32*, i32*, i32*, %struct.TYPE_12__*, i32*) #2

declare dso_local i32 @cache_windows(i32*, i32*, %struct.TYPE_13__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
