; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_start_with.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-string-ext/src/extr_string.c_mrb_str_start_with.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_start_with to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_start_with(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @mrb_get_args(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6, i64* %8)
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %50, %2
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @mrb_gc_arena_save(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mrb_ensure_string_type(i32* %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @mrb_gc_arena_restore(i32* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @RSTRING_LEN(i32 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @RSTRING_LEN(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @RSTRING_PTR(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @RSTRING_PTR(i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @memcmp(i32 %40, i32 %42, i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 (...) @mrb_true_value()
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %15

53:                                               ; preds = %15
  %54 = call i32 (...) @mrb_false_value()
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_ensure_string_type(i32*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_true_value(...) #1

declare dso_local i32 @mrb_false_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
