; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_send_space.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_test_send_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rawok\00", align 1
@ZFS_IOC_SEND_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_send_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_send_space(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32* (...) @fnvlist_alloc()
  store i32* %6, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @fnvlist_add_string(i32* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @fnvlist_add_boolean(i32* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @fnvlist_add_boolean(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fnvlist_add_boolean(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @fnvlist_add_boolean(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i32, i32* @ZFS_IOC_SEND_SPACE, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @IOC_INPUT_TEST(i32 %18, i8* %19, i32* null, i32* %20, i32 0)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @nvlist_free(i32* %22)
  ret void
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i32 @IOC_INPUT_TEST(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
