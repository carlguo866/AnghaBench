; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_reverse_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.reverse_tree_baton_t* }
%struct.reverse_tree_baton_t = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_4__*, i32*)* @reverse_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @reverse_file_changed(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32 %7, i32* %8, i8* %9, %struct.TYPE_4__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.reverse_tree_baton_t*, align 8
  %26 = alloca i32*, align 8
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %23, align 8
  store i32* %11, i32** %24, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %28, align 8
  store %struct.reverse_tree_baton_t* %29, %struct.reverse_tree_baton_t** %25, align 8
  store i32* null, i32** %26, align 8
  %30 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %25, align 8
  %31 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %12
  %35 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %25, align 8
  %36 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = call i8* @svn_relpath_join(i64 %37, i8* %38, i32* %39)
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %34, %12
  %42 = load i32*, i32** %21, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32*, i32** %18, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** %19, align 8
  %49 = icmp ne i32* %48, null
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = call i32 @svn_prop_diffs(i32** %26, i32* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %50, %41
  %60 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %25, align 8
  %61 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)** %63, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load i32*, i32** %26, align 8
  %74 = load i8*, i8** %22, align 8
  %75 = load %struct.reverse_tree_baton_t*, %struct.reverse_tree_baton_t** %25, align 8
  %76 = getelementptr inbounds %struct.reverse_tree_baton_t, %struct.reverse_tree_baton_t* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32*, i32** %24, align 8
  %79 = call i32 %64(i8* %65, i32* %66, i32* %67, i8* %68, i8* %69, i32* %70, i32* %71, i32 %72, i32* %73, i8* %74, %struct.TYPE_5__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %81
}

declare dso_local i8* @svn_relpath_join(i64, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
