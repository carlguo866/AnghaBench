; ModuleID = '/home/carl/AnghaBench/libgit2/src/allocators/extr_stdalloc.c_stdalloc__strndup.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/allocators/extr_stdalloc.c_stdalloc__strndup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i32)* @stdalloc__strndup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stdalloc__strndup(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @p_strnlen(i8* %13, i64 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %11, i64 %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @stdalloc__malloc(i64 %20, i8* %21, i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %4
  store i8* null, i8** %5, align 8
  br label %39

26:                                               ; preds = %19
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %34, %25
  %40 = load i8*, i8** %5, align 8
  ret i8* %40
}

declare dso_local i64 @p_strnlen(i8*, i64) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

declare dso_local i8* @stdalloc__malloc(i64, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
