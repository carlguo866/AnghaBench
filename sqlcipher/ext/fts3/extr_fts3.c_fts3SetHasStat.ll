; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SetHasStat.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SetHasStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s_stat\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @fts3SetHasStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SetHasStat(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i32, i32* @SQLITE_OK, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @sqlite3_table_column_metadata(i32 %21, i32 %24, i8* %25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sqlite3_free(i8* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %37

35:                                               ; preds = %11
  %36 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %18
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_table_column_metadata(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
