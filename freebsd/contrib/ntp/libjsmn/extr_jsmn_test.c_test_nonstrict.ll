; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_nonstrict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libjsmn/extr_jsmn_test.c_test_nonstrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"a: 0garbage\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Day : 26\0AMonth : Sep\0A\0AYear: 12\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_nonstrict() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = call i32 @jsmn_init(i32* %3)
  %6 = load i8*, i8** %1, align 8
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %8 = call i32 @jsmn_parse(i32* %3, i8* %6, i32 4, i32* %7, i32 10)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = call i32 @check(i32 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = call i32 @TOKEN_STRING(i8* %13, i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @check(i32 %16)
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TOKEN_STRING(i8* %18, i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @check(i32 %21)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  %23 = call i32 @jsmn_init(i32* %3)
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %4, i64 0, i64 0
  %28 = call i32 @jsmn_parse(i32* %3, i8* %24, i32 %26, i32* %27, i32 10)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 6
  %31 = zext i1 %30 to i32
  %32 = call i32 @check(i32 %31)
  ret i32 0
}

declare dso_local i32 @jsmn_init(i32*) #1

declare dso_local i32 @jsmn_parse(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @check(i32) #1

declare dso_local i32 @TOKEN_STRING(i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
