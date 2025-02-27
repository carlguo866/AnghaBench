; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_prop_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_prop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_wc_prop_get(i32** %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @svn_dirent_get_absolute(i8** %12, i8* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @svn_wc__adm_get_db(i32* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @svn_wc__context_create_with_db(i32** %11, i32* null, i32 %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call %struct.TYPE_7__* @svn_wc_prop_get2(i32** %23, i32* %24, i8* %25, i8* %26, i32* %27, i32* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %13, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %5
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32**, i32*** %6, align 8
  store i32* null, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = call i32 @svn_error_clear(%struct.TYPE_7__* %40)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  br label %42

42:                                               ; preds = %38, %32, %5
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_wc_context_destroy(i32* %44)
  %46 = call %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__* %43, i32 %45)
  ret %struct.TYPE_7__* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local %struct.TYPE_7__* @svn_wc_prop_get2(i32**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @svn_error_compose_create(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
