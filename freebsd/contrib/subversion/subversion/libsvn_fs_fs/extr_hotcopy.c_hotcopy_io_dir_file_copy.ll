; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_io_dir_file_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_io_dir_file_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i32*)* @hotcopy_io_dir_file_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_io_dir_file_copy(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i8* @svn_dirent_join(i8* %16, i8* %17, i32* %18)
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @svn_io_stat_dirent2(%struct.TYPE_3__** %13, i8* %20, i32 %21, i32 %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @svn_node_none, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %5
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i8* @svn_dirent_join(i8* %33, i8* %34, i32* %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @svn_io_stat_dirent2(%struct.TYPE_3__** %12, i8* %37, i32 %38, i32 %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %32
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %6, align 8
  br label %91

77:                                               ; preds = %67, %59, %51, %32
  br label %78

78:                                               ; preds = %77, %5
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32*, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @svn_io_dir_file_copy(i8* %85, i8* %86, i8* %87, i32* %88)
  %90 = call i32* @svn_error_trace(i32 %89)
  store i32* %90, i32** %6, align 8
  br label %91

91:                                               ; preds = %84, %75
  %92 = load i32*, i32** %6, align 8
  ret i32* %92
}

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_stat_dirent2(%struct.TYPE_3__**, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_io_dir_file_copy(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
