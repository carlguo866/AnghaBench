; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_uri_int64.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_uri_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_uri_int64(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @sqlite3_uri_parameter(i8* %9, i8* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @sqlite3Strlen30(i8* %16)
  %18 = load i32, i32* @SQLITE_UTF8, align 4
  %19 = call i64 @sqlite3Atoi64(i8* %15, i32* %8, i32 %17, i32 %18)
  %20 = load i64, i64* @SQLITE_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %14, %3
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i8* @sqlite3_uri_parameter(i8*, i8*) #1

declare dso_local i64 @sqlite3Atoi64(i8*, i32*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
