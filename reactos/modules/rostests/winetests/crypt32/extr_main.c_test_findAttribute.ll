; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_main.c_test_findAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__*, i32 }

@__const.test_findAttribute.blobbin = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@test_findAttribute.oid = internal global [6 x i8] c"1.2.3\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Last error was set to %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"1.2.4\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"CertFindAttribute failed: %08x\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_findAttribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_findAttribute() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [3 x i32], align 4
  %3 = alloca [1 x %struct.TYPE_5__], align 16
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = bitcast [3 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([3 x i32]* @__const.test_findAttribute.blobbin to i8*), i64 12, i1 false)
  %6 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 12, i32* %7, align 16
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_findAttribute.oid, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %12 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %17 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %18 = ptrtoint %struct.TYPE_5__* %17 to i32
  store i32 %18, i32* %16, align 8
  %19 = call i32 @SetLastError(i32 -559038737)
  %20 = call i32* @CertFindAttribute(i8* null, i32 0, %struct.TYPE_6__* null)
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (...) @GetLastError()
  %26 = icmp eq i32 %25, -559038737
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @SetLastError(i32 -559038737)
  %31 = call i32* @CertFindAttribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 1, %struct.TYPE_6__* %4)
  store i32* %31, i32** %1, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 (...) @GetLastError()
  %37 = icmp eq i32 %36, -559038737
  %38 = zext i1 %37 to i32
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = call i32* @CertFindAttribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1, %struct.TYPE_6__* %4)
  store i32* %42, i32** %1, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, -559038737
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 @SetLastError(i32 -559038737)
  %53 = call i32* @CertFindAttribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1, %struct.TYPE_6__* %4)
  store i32* %53, i32** %1, align 8
  %54 = load i32*, i32** %1, align 8
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32* @CertFindAttribute(i8*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
