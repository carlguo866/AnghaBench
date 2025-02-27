; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3SelectDoctotal.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_sqlite3Fts3SelectDoctotal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQL_SELECT_STAT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@FTS_STAT_DOCTOTAL = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i64 0, align 8
@FTS_CORRUPT_VTAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3SelectDoctotal(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @SQL_SELECT_STAT, align 4
  %9 = call i32 @fts3SqlStmt(i32* %7, i32 %8, i32** %5, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @FTS_STAT_DOCTOTAL, align 4
  %16 = call i32 @sqlite3_bind_int(i32* %14, i32 1, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @sqlite3_step(i32* %17)
  %19 = load i64, i64* @SQLITE_ROW, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @sqlite3_column_type(i32* %22, i32 0)
  %24 = load i64, i64* @SQLITE_BLOB, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %13
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @sqlite3_reset(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @FTS_CORRUPT_VTAB, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %26
  store i32* null, i32** %5, align 8
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32*, i32** %5, align 8
  %38 = load i32**, i32*** %4, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @fts3SqlStmt(i32*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_bind_int(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
