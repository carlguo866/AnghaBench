; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*, i32, i32*)*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32**)* @testEnvOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testEnvOpen(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %14 = call %struct.TYPE_7__* (...) @tdb_lsm_env()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %13, align 4
  %21 = call i64 @testMalloc(i32 16)
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %13, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = call i64 @memcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i32 4)
  %35 = icmp eq i64 0, %34
  br label %36

36:                                               ; preds = %28, %4
  %37 = phi i1 [ false, %4 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_7__*, i8*, i32, i32*)*, i32 (%struct.TYPE_7__*, i8*, i32, i32*)** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = call i32 %43(%struct.TYPE_7__* %44, i8* %45, i32 %46, i32* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @LSM_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = call i32 @testFree(%struct.TYPE_8__* %54)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  br label %56

56:                                               ; preds = %53, %36
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = bitcast %struct.TYPE_8__* %57 to i32*
  %59 = load i32**, i32*** %8, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local %struct.TYPE_7__* @tdb_lsm_env(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @testMalloc(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @testFree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
