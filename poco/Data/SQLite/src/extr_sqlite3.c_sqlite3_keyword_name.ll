; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_keyword_name.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_keyword_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_N_KEYWORD = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@zKWText = common dso_local global i8* null, align 8
@aKWOffset = common dso_local global i32* null, align 8
@aKWLen = common dso_local global i32* null, align 8
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_keyword_name(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SQLITE_N_KEYWORD, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %3
  %15 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %10
  %17 = load i8*, i8** @zKWText, align 8
  %18 = load i32*, i32** @aKWOffset, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  %25 = load i8**, i8*** %6, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** @aKWLen, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
