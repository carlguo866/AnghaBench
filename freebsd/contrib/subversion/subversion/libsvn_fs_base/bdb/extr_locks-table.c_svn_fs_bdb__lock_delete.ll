; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__lock_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_locks-table.c_svn_fs_bdb__lock_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32*, i32)* }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"locks\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"deleting lock from 'locks' table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__lock_delete(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @svn_fs_base__str_to_dbt(i32* %11, i8* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_10__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_13__*, i32, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32*, i32)** %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %24(%struct.TYPE_13__* %27, i32 %30, i32* %11, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @DB_NOTFOUND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @svn_fs_base__err_bad_lock_token(%struct.TYPE_11__* %36, i8* %37)
  store i32* %38, i32** %5, align 8
  br label %44

39:                                               ; preds = %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @N_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %12, align 4
  %43 = call i32* @BDB_WRAP(%struct.TYPE_11__* %40, i32 %41, i32 %42)
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32*, i32** %5, align 8
  ret i32* %45
}

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i32* @svn_fs_base__err_bad_lock_token(%struct.TYPE_11__*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
