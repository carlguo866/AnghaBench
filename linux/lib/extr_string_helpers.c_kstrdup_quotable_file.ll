; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable_file.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"<no_memory>\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<too_long>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kstrdup_quotable_file(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = icmp ne %struct.file* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @kstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i8* %12, i8** %3, align 8
  br label %43

13:                                               ; preds = %2
  %14 = load i64, i64* @PATH_MAX, align 8
  %15 = add nsw i64 %14, 11
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmalloc(i64 %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @kstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i8* %22, i8** %3, align 8
  br label %43

23:                                               ; preds = %13
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* @PATH_MAX, align 8
  %27 = add nsw i64 %26, 11
  %28 = call i8* @file_path(%struct.file* %24, i8* %25, i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = call i8* @kstrdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i8* %34, i8** %7, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @kstrdup_quotable(i8* %36, i32 %37)
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %39, %20, %10
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @file_path(%struct.file*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @kstrdup_quotable(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
