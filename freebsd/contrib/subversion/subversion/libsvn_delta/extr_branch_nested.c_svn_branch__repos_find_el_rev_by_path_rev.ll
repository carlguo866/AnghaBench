; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_svn_branch__repos_find_el_rev_by_path_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_svn_branch__repos_find_el_rev_by_path_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_branch__repos_find_el_rev_by_path_rev(%struct.TYPE_4__** %0, i32* %1, i32 %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call %struct.TYPE_4__* @apr_palloc(i32* %17, i32 12)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %15, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @svn_branch__repos_get_branch_by_id(i32** %16, i32* %19, i32 %20, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %16, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_branch__find_nested_branch_element_by_relpath(i32* %29, i32* %31, i32* %32, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %42, align 8
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local %struct.TYPE_4__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_branch__repos_get_branch_by_id(i32**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_branch__find_nested_branch_element_by_relpath(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
