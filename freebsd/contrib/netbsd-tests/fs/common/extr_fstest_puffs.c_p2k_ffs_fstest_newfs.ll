; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_p2k_ffs_fstest_newfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_p2k_ffs_fstest_newfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"p2kffsfake\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"P2K_NODETACH\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rump_ffs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2k_ffs_fstest_newfs(i32* %0, i8** %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [5 x i8*], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call i32 (...) @rump_init()
  %15 = load i32*, i32** %7, align 8
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @ffs_fstest_newfs(i32* %15, i8** %16, i8* %17, i32 %18, i8* %19)
  store i32 %20, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %58

24:                                               ; preds = %5
  %25 = call i32 @mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 511)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EEXIST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %58

34:                                               ; preds = %27, %24
  %35 = call i32 @setenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %36 = call i8* @__UNCONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %37 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  store i8* %36, i8** %37, align 16
  %38 = load i8*, i8** %9, align 8
  %39 = call i8* @__UNCONST(i8* %38)
  %40 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 1
  store i8* %39, i8** %40, align 8
  %41 = call i8* @__UNCONST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 2
  store i8* %41, i8** %42, align 16
  %43 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 3
  store i8* null, i8** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i8**, i8*** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %12, i64 0, i64 0
  %50 = call i32 @donewfs(i32* %44, i8** %45, i8* %46, i32 %47, i8* %48, i8** %49)
  store i32 %50, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %34
  %53 = load i32*, i32** %7, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = call i32 @ffs_fstest_delfs(i32* %53, i8** %54)
  br label %56

56:                                               ; preds = %52, %34
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %31, %22
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @ffs_fstest_newfs(i32*, i8**, i8*, i32, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i8* @__UNCONST(i8*) #1

declare dso_local i32 @donewfs(i32*, i8**, i8*, i32, i8*, i8**) #1

declare dso_local i32 @ffs_fstest_delfs(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
