; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_update_editor3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_update_editor3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_info_update_baton = type { i32*, i32* }
%struct.conflict_func_1to2_baton = type { i8*, i64 }

@traversal_info_update = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@conflict_func_1to2_wrapper = common dso_local global i32* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_update_editor3(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8* %10, i64 %11, i8* %12, i32 %13, i8* %14, i8* %15, i32* %16, i32** %17, i8** %18, i32* %19, i32* %20) #0 {
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32**, align 8
  %40 = alloca i8**, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca %struct.traversal_info_update_baton*, align 8
  %47 = alloca %struct.conflict_func_1to2_baton*, align 8
  store i32* %0, i32** %22, align 8
  store i32* %1, i32** %23, align 8
  store i8* %2, i8** %24, align 8
  store i32 %3, i32* %25, align 4
  store i32 %4, i32* %26, align 4
  store i32 %5, i32* %27, align 4
  store i32 %6, i32* %28, align 4
  store i32 %7, i32* %29, align 4
  store i8* %8, i8** %30, align 8
  store i32 %9, i32* %31, align 4
  store i8* %10, i8** %32, align 8
  store i64 %11, i64* %33, align 8
  store i8* %12, i8** %34, align 8
  store i32 %13, i32* %35, align 4
  store i8* %14, i8** %36, align 8
  store i8* %15, i8** %37, align 8
  store i32* %16, i32** %38, align 8
  store i32** %17, i32*** %39, align 8
  store i8** %18, i8*** %40, align 8
  store i32* %19, i32** %41, align 8
  store i32* %20, i32** %42, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = call i32* @svn_wc__adm_get_db(i32* %48)
  store i32* %49, i32** %44, align 8
  store i32* null, i32** %45, align 8
  store %struct.traversal_info_update_baton* null, %struct.traversal_info_update_baton** %46, align 8
  store %struct.conflict_func_1to2_baton* null, %struct.conflict_func_1to2_baton** %47, align 8
  %50 = load i32*, i32** %44, align 8
  %51 = load i32*, i32** %42, align 8
  %52 = call i32 @svn_wc__context_create_with_db(i32** %43, i32* null, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %41, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %21
  %57 = load i32*, i32** %42, align 8
  %58 = call %struct.traversal_info_update_baton* @apr_palloc(i32* %57, i32 16)
  store %struct.traversal_info_update_baton* %58, %struct.traversal_info_update_baton** %46, align 8
  %59 = load i32*, i32** %44, align 8
  %60 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %46, align 8
  %61 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i32*, i32** %41, align 8
  %63 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %46, align 8
  %64 = getelementptr inbounds %struct.traversal_info_update_baton, %struct.traversal_info_update_baton* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** @traversal_info_update, align 8
  store i32* %65, i32** %45, align 8
  br label %66

66:                                               ; preds = %56, %21
  %67 = load i64, i64* %33, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32*, i32** %42, align 8
  %71 = call %struct.conflict_func_1to2_baton* @apr_pcalloc(i32* %70, i32 16)
  store %struct.conflict_func_1to2_baton* %71, %struct.conflict_func_1to2_baton** %47, align 8
  %72 = load i64, i64* %33, align 8
  %73 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %47, align 8
  %74 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load i8*, i8** %34, align 8
  %76 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %47, align 8
  %77 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %66
  %79 = load i8*, i8** %37, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i8*, i8** %37, align 8
  %83 = load i32*, i32** %42, align 8
  %84 = call i32 @svn_path_cstring_to_utf8(i8** %37, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32**, i32*** %39, align 8
  %88 = load i8**, i8*** %40, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = load i32*, i32** %43, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = call i32 @svn_wc__adm_access_abspath(i32* %91)
  %93 = load i8*, i8** %24, align 8
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %26, align 4
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32, i32* @FALSE, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i8*, i8** %37, align 8
  %102 = load i32*, i32** %38, align 8
  %103 = load i64, i64* %33, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i32*, i32** @conflict_func_1to2_wrapper, align 8
  br label %108

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32* [ %106, %105 ], [ null, %107 ]
  %110 = load %struct.conflict_func_1to2_baton*, %struct.conflict_func_1to2_baton** %47, align 8
  %111 = load i32*, i32** %45, align 8
  %112 = load %struct.traversal_info_update_baton*, %struct.traversal_info_update_baton** %46, align 8
  %113 = load i32, i32* %31, align 4
  %114 = load i8*, i8** %32, align 8
  %115 = load i32, i32* %29, align 4
  %116 = load i8*, i8** %30, align 8
  %117 = load i32*, i32** %42, align 8
  %118 = load i32*, i32** %42, align 8
  %119 = call i32 @svn_wc_get_update_editor4(i32** %87, i8** %88, i32* %89, i32* %90, i32 %92, i8* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i8* %101, i32* %102, i32* null, i32* null, i32* %109, %struct.conflict_func_1to2_baton* %110, i32* %111, %struct.traversal_info_update_baton* %112, i32 %113, i8* %114, i32 %115, i8* %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %121
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.traversal_info_update_baton* @apr_palloc(i32*, i32) #1

declare dso_local %struct.conflict_func_1to2_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_get_update_editor4(i32**, i8**, i32*, i32*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, %struct.conflict_func_1to2_baton*, i32*, %struct.traversal_info_update_baton*, i32, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__adm_access_abspath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
