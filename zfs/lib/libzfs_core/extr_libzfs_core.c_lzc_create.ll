; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs_core/extr_libzfs_core.c_lzc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"wkeydata\00", align 1
@ZPOOL_HIDDEN_ARGS = common dso_local global i8* null, align 8
@ZFS_IOC_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_create(i8* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %12, align 8
  %14 = call i32* (...) @fnvlist_alloc()
  store i32* %14, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @fnvlist_add_int32(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @fnvlist_add_nvlist(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  br label %24

24:                                               ; preds = %20, %5
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i32* (...) @fnvlist_alloc()
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @fnvlist_add_uint8_array(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load i8*, i8** @ZPOOL_HIDDEN_ARGS, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @fnvlist_add_nvlist(i32* %33, i8* %34, i32* %35)
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* @ZFS_IOC_CREATE, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @lzc_ioctl(i32 %38, i8* %39, i32* %40, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @nvlist_free(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @nvlist_free(i32* %44)
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @fnvlist_add_uint8_array(i32*, i8*, i32*, i32) #1

declare dso_local i32 @lzc_ioctl(i32, i8*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
