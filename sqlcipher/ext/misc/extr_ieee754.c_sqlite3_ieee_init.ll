; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_ieee754.c_sqlite3_ieee_init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_ieee754.c_sqlite3_ieee_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ieee754\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@ieee754func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_ieee_init(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @SQLITE_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @SQLITE_EXTENSION_INIT2(i32* %9)
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @SQLITE_UTF8, align 4
  %14 = load i32, i32* @ieee754func, align 4
  %15 = call i32 @sqlite3_create_function(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1, i32 %13, i32 0, i32 %14, i32 0, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @SQLITE_UTF8, align 4
  %22 = load i32, i32* @ieee754func, align 4
  %23 = call i32 @sqlite3_create_function(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 2, i32 %21, i32 0, i32 %22, i32 0, i32 0)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @SQLITE_EXTENSION_INIT2(i32*) #1

declare dso_local i32 @sqlite3_create_function(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
