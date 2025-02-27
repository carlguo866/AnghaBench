; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_exec_cleanup_query.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_exec_cleanup_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARNING = common dso_local global i32 0, align 4
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @pgfdw_exec_cleanup_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgfdw_exec_cleanup_query(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = call i32 (...) @GetCurrentTimestamp()
  %11 = call i32 @TimestampTzPlusMilliseconds(i32 %10, i32 30000)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @PQsendQuery(i32* %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @WARNING, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @pgfdw_report_error(i32 %17, i32* null, i32* %18, i32 0, i8* %19)
  store i32 0, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @pgfdw_get_cleanup_result(i32* %22, i32 %23, i32** %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %42

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @PQresultStatus(i32* %28)
  %30 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @WARNING, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @pgfdw_report_error(i32 %33, i32* %34, i32* %35, i32 1, i8* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @PQclear(i32* %40)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %32, %26, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @TimestampTzPlusMilliseconds(i32, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @PQsendQuery(i32*, i8*) #1

declare dso_local i32 @pgfdw_report_error(i32, i32*, i32*, i32, i8*) #1

declare dso_local i64 @pgfdw_get_cleanup_result(i32*, i32, i32**) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
