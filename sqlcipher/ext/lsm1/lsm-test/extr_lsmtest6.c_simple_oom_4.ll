; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_simple_oom_4.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest6.c_simple_oom_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSM_OK = common dso_local global i32 0, align 4
@LSMTEST6_TESTDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"onetwothree\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"456\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fourfivesix\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"789\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"seveneightnine\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"teneleventwelve\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"fourteenfifteensixteen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @simple_oom_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_oom_4(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @LSM_OK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %7 = call i32 @testDeleteLsmdb(i32 %6)
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LSMTEST6_TESTDB, align 4
  %10 = call i32 @testOomOpen(i32* %8, i32 %9, i32** %4, i32* %3)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @testOomWriteStr(i32* %11, i32* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @testOomWriteStr(i32* %14, i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @testOomWriteStr(i32* %17, i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %3)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @testOomWriteStr(i32* %20, i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %3)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @testOomWriteStr(i32* %23, i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %3)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lsm_close(i32* %26)
  ret void
}

declare dso_local i32 @testDeleteLsmdb(i32) #1

declare dso_local i32 @testOomOpen(i32*, i32, i32**, i32*) #1

declare dso_local i32 @testOomWriteStr(i32*, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @lsm_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
