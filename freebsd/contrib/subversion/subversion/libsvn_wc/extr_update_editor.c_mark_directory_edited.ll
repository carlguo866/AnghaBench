; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_mark_directory_edited.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_mark_directory_edited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8*, i32, %struct.TYPE_3__*, i64, i32, i32, i32, i32, i8*, %struct.dir_baton* }
%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton*, i32*)* @mark_directory_edited to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_directory_edited(%struct.dir_baton* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dir_baton*, align 8
  %5 = alloca i32*, align 8
  store %struct.dir_baton* %0, %struct.dir_baton** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %7 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %6, i32 0, i32 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %11, i32** %3, align 8
  br label %88

12:                                               ; preds = %2
  %13 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %14 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %13, i32 0, i32 9
  %15 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %16 = icmp ne %struct.dir_baton* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 9
  %20 = load %struct.dir_baton*, %struct.dir_baton** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @mark_directory_edited(%struct.dir_baton* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i8*, i8** @TRUE, align 8
  %26 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %29 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %86

32:                                               ; preds = %24
  %33 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %37 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %40 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %43 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %46 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %49 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @svn_node_dir, align 4
  %52 = load i32, i32* @svn_node_dir, align 4
  %53 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = call i32* @complete_conflict(i64 %35, %struct.TYPE_3__* %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %51, i32 %52, i32* null, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  %59 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %60 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %65 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %68 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32* @svn_wc__db_op_mark_conflict(i32 %63, i32 %66, i64 %69, i32* null, i32* %70)
  %72 = call i32 @SVN_ERR(i32* %71)
  %73 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %74 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %77 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @svn_node_dir, align 4
  %80 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @do_notification(%struct.TYPE_3__* %75, i32 %78, i32 %79, i32 %80, i32* %81)
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.dir_baton*, %struct.dir_baton** %4, align 8
  %85 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %32, %24
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %3, align 8
  br label %88

88:                                               ; preds = %86, %10
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @complete_conflict(i64, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @svn_wc__db_op_mark_conflict(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @do_notification(%struct.TYPE_3__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
