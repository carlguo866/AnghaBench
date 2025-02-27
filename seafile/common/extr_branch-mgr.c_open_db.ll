; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_open_db.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@BRANCH_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[Branch mgr] Failed to open branch db\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"CREATE TABLE IF NOT EXISTS Branch (name TEXT, repo_id TEXT, commit_id TEXT);\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"CREATE INDEX IF NOT EXISTS branch_index ON Branch(repo_id, name);\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @open_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_db(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BRANCH_DB, align 4
  %12 = call i8* @g_build_filename(i32 %10, i32 %11, i32* null)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i64 @sqlite_open_db(i8* %13, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = call i32 @g_critical(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @g_free(i8* %22)
  store i32 -1, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @g_free(i8* %25)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @sqlite_query_exec(i32 %31, i8* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %47

36:                                               ; preds = %24
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @sqlite_query_exec(i32 %41, i8* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %35, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @g_build_filename(i32, i32, i32*) #1

declare dso_local i64 @sqlite_open_db(i8*, i32*) #1

declare dso_local i32 @g_critical(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @sqlite_query_exec(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
