; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_node-origins-table.c_svn_fs_bdb__delete_node_origin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_node-origins-table.c_svn_fs_bdb__delete_node_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32*, i32)* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"node-origins\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"deleting entry from 'node-origins' table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__delete_node_origin(%struct.TYPE_10__* %0, i8* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @svn_fs_base__str_to_dbt(i32* %10, i8* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_9__* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @N_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_12__*, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32*, i32)** %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %24(%struct.TYPE_12__* %27, i32 %30, i32* %10, i32 0)
  %32 = call i32* @BDB_WRAP(%struct.TYPE_10__* %18, i32 %19, i32 %31)
  ret i32* %32
}

declare dso_local i32 @svn_fs_base__str_to_dbt(i32*, i8*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
