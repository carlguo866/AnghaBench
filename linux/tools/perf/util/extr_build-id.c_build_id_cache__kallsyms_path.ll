; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__kallsyms_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__kallsyms_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"%s/%s/%s/kallsyms\00", align 1
@buildid_dir = common dso_local global i8* null, align 8
@DSO__NAME_KALLSYMS = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_id_cache__kallsyms_path(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i8*, i8** @buildid_dir, align 8
  %12 = load i8*, i8** @DSO__NAME_KALLSYMS, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @snprintf(i8* %9, i64 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12, i8* %13)
  br label %15

15:                                               ; preds = %25, %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @F_OK, align 4
  %18 = call i32 @access(i8* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %4, align 8
  br label %33

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i8*, i8** @buildid_dir, align 8
  %29 = load i8*, i8** @DSO__NAME_KALLSYMS, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @snprintf(i8* %26, i64 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28, i8* %29, i8* %30)
  store i32 0, i32* %8, align 4
  br label %15

32:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
