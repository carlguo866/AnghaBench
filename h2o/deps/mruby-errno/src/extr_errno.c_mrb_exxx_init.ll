; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_exxx_init.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-errno/src/extr_errno.c_mrb_exxx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|S\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mesg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_exxx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_exxx_init(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mrb_class(i32* %9, i32 %10)
  %12 = call i32 @mrb_obj_value(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_intern_lit(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @mrb_const_get(i32* %8, i32 %12, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mrb_fixnum(i32 %17)
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @mrb_str_new_cstr(i32* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @mrb_nil_value()
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_get_args(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mrb_nil_p(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mrb_str_cat2(i32* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @mrb_str_append(i32* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @mrb_intern_lit(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mrb_iv_set(i32* %36, i32 %37, i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mrb_const_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_class(i32*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_str_cat2(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_append(i32*, i32, i32) #1

declare dso_local i32 @mrb_iv_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
