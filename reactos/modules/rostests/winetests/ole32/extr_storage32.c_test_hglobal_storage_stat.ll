; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_hglobal_storage_stat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_hglobal_storage_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"CreateILockBytesOnHGlobal failed\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"StgIsStorageILockBytes should have failed\0A\00", align 1
@STGM_CREATE = common dso_local global i64 0, align 8
@STGM_SHARE_EXCLUSIVE = common dso_local global i64 0, align 8
@STGM_READWRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"StgCreateDocfileOnILockBytes failed\0A\00", align 1
@test_stg_cls = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"WriteClassStg failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"StgIsStorageILockBytes failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"storage name not null\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"type is wrong\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"grf mode is incorrect\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"CLSID is wrong\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"IStorage refcount is wrong\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ILockBytes refcount is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hglobal_storage_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hglobal_storage_stat() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i64 @CreateILockBytesOnHGlobal(i32* null, i32 %7, i32** %1)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i64 @StgIsStorageILockBytes(i32* %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @S_FALSE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @STGM_CREATE, align 8
  %22 = load i64, i64* @STGM_SHARE_EXCLUSIVE, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @STGM_READWRITE, align 8
  %25 = or i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load i32*, i32** %1, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @StgCreateDocfileOnILockBytes(i32* %26, i64 %27, i32 0, i32** %2)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = call i64 @WriteClassStg(i32* %34, i32* @test_stg_cls)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @StgIsStorageILockBytes(i32* %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 24)
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @IStorage_Stat(i32* %49, %struct.TYPE_4__* %4, i32 0)
  store i64 %50, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 18
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %67 = call i32 @memcmp(i32* %66, i32* @test_stg_cls, i32 4)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32*, i32** %2, align 8
  %73 = call i64 @IStorage_Release(i32* %72)
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32*, i32** %1, align 8
  %79 = call i64 @ILockBytes_Release(i32* %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateILockBytesOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @StgIsStorageILockBytes(i32*) #1

declare dso_local i64 @StgCreateDocfileOnILockBytes(i32*, i64, i32, i32**) #1

declare dso_local i64 @WriteClassStg(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IStorage_Stat(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @IStorage_Release(i32*) #1

declare dso_local i64 @ILockBytes_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
