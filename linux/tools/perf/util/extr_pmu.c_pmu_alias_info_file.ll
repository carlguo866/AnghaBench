; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_alias_info_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_pmu.c_pmu_alias_info_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".unit\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".scale\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".per-pkg\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c".snapshot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pmu_alias_info_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_alias_info_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ugt i64 %7, 5
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = getelementptr inbounds i8, i8* %12, i64 -5
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %51

17:                                               ; preds = %9, %1
  %18 = load i64, i64* %4, align 8
  %19 = icmp ugt i64 %18, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -6
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %51

28:                                               ; preds = %20, %17
  %29 = load i64, i64* %4, align 8
  %30 = icmp ugt i64 %29, 8
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 -8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %51

39:                                               ; preds = %31, %28
  %40 = load i64, i64* %4, align 8
  %41 = icmp ugt i64 %40, 9
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 -9
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %51

50:                                               ; preds = %42, %39
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %38, %27, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
