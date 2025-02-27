; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_unlnk_exist.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_unlnk_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@kflag = common dso_local global i64 0, align 8
@PAX_DIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to remove directory %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not unlink %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unlnk_exist(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @lstat(i8* %7, %struct.stat* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load i64, i64* @kflag, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %43

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @rmdir(i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PAX_DIR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %43

29:                                               ; preds = %24
  %30 = load i32, i32* @errno, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @syswarn(i32 1, i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %3, align 4
  br label %43

33:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %43

34:                                               ; preds = %15
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @unlink(i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @errno, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @syswarn(i32 1, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 -1, i32* %3, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38, %33, %29, %28, %14, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
