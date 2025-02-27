; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_flock.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_flock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@errno = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"flock failed\00", align 1
@E_NOTIMP_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_file_flock(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @mrb_get_args(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mrb_io_fileno(i32* %10, i32 %11)
  %13 = call i64 @mrb_fixnum(i32 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @flock(i32 %16, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  switch i32 %21, label %31 [
    i32 129, label %22
    i32 130, label %23
    i32 128, label %23
  ]

22:                                               ; preds = %20
  br label %34

23:                                               ; preds = %20, %20
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LOCK_NB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @mrb_false_value()
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %20, %30
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @mrb_sys_fail(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %22
  br label %15

35:                                               ; preds = %15
  %36 = call i32 @mrb_fixnum_value(i32 0)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_io_fileno(i32*, i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @mrb_false_value(...) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
