; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_get_dir_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_get_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i8*, i8* }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Attempted to get entries of a non-directory node\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, %struct.TYPE_10__*, i32*, i32*)* @get_dir_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dir_entries(i32** %0, i32* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svn_node_dir, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %27 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %28 = call i32* @svn_error_create(i32 %26, i32* null, i32 %27)
  store i32* %28, i32** %6, align 8
  br label %98

29:                                               ; preds = %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @svn_fs_base__rep_contents(%struct.TYPE_8__* %14, i32* %35, i32 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32* @svn_skel__parse(i32 %44, i32 %46, i32* %47)
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_fs_base__parse_entries_skel(i32** %12, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %51, %34
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32**, i32*** %7, align 8
  store i32* null, i32** %58, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %6, align 8
  br label %98

63:                                               ; preds = %57
  %64 = load i32*, i32** %11, align 8
  %65 = call i32* @apr_hash_make(i32* %64)
  %66 = load i32**, i32*** %7, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32* @apr_hash_first(i32* %67, i32* %68)
  store i32* %69, i32** %13, align 8
  br label %70

70:                                               ; preds = %93, %63
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  %75 = call %struct.TYPE_9__* @apr_palloc(i32* %74, i32 24)
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %19, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @apr_hash_this(i32* %76, i8** %16, i32* %17, i8** %18)
  %78 = load i8*, i8** %16, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @svn_node_unknown, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32**, i32*** %7, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %92 = call i32 @apr_hash_set(i32* %88, i8* %89, i32 %90, %struct.TYPE_9__* %91)
  br label %93

93:                                               ; preds = %73
  %94 = load i32*, i32** %13, align 8
  %95 = call i32* @apr_hash_next(i32* %94)
  store i32* %95, i32** %13, align 8
  br label %70

96:                                               ; preds = %70
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %97, i32** %6, align 8
  br label %98

98:                                               ; preds = %96, %61, %25
  %99 = load i32*, i32** %6, align 8
  ret i32* %99
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__rep_contents(%struct.TYPE_8__*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_base__parse_entries_skel(i32**, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
