; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_carray.c_carrayConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_carray.c_carrayConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"CREATE TABLE x(value,pointer hidden,count hidden,ctype hidden)\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @carrayConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carrayConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @sqlite3_declare_vtab(i32* %16, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @SQLITE_OK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = call i32* @sqlite3_malloc(i32 4)
  %23 = load i32**, i32*** %12, align 8
  store i32* %22, i32** %23, align 8
  store i32* %22, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %21
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
