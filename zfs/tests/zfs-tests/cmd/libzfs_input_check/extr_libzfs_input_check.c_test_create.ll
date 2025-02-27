; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_create.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/create-fs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"recordsize\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@ZFS_IOC_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAXNAMELEN, align 4
  %9 = add nsw i32 %8, 32
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = trunc i64 %10 to i32
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32* (...) @fnvlist_alloc()
  store i32* %16, i32** %5, align 8
  %17 = call i32* (...) @fnvlist_alloc()
  store i32* %17, i32** %6, align 8
  %18 = call i32* (...) @fnvlist_alloc()
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @DMU_OST_ZFS, align 4
  %21 = call i32 @fnvlist_add_int32(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @fnvlist_add_uint64(i32* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 8192)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @fnvlist_add_nvlist(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %25)
  %27 = load i32, i32* @ZFS_IOC_CREATE, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @IOC_INPUT_TEST(i32 %27, i8* %12, i32* %28, i32* %29, i32 0)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @nvlist_free(i32* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @nvlist_free(i32* %33)
  %35 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #2

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #2

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @IOC_INPUT_TEST(i32, i8*, i32*, i32*, i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
