; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_arena_i_reset_ctl.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_arena_i_reset_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @arena_i_reset_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_i_reset_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @arena_i_reset_destroy_helper(i32* %19, i64* %20, i64 %21, i8* %22, i64* %23, i8* %24, i64 %25, i32* %17, i32** %18)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %8, align 4
  br label %42

31:                                               ; preds = %7
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @arena_reset_prepare_background_thread(i32* %32, i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @arena_reset(i32* %35, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @arena_reset_finish_background_thread(i32* %38, i32 %39)
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %31, %29
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @arena_i_reset_destroy_helper(i32*, i64*, i64, i8*, i64*, i8*, i64, i32*, i32**) #1

declare dso_local i32 @arena_reset_prepare_background_thread(i32*, i32) #1

declare dso_local i32 @arena_reset(i32*, i32*) #1

declare dso_local i32 @arena_reset_finish_background_thread(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
