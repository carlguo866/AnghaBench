; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_i_muzzy_decay_ms_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_i_muzzy_decay_ms_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @arena_i_muzzy_decay_ms_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_i_muzzy_decay_ms_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @arena_i_decay_ms_ctl_impl(i32* %15, i64* %16, i64 %17, i8* %18, i64* %19, i8* %20, i64 %21, i32 0)
  ret i32 %22
}

declare dso_local i32 @arena_i_decay_ms_ctl_impl(i32*, i64*, i64, i8*, i64*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
