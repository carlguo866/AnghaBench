; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_init_copy.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-struct/src/extr_struct.c_mrb_struct_init_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"o\00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wrong argument class\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"corrupted struct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_struct_init_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_struct_init_copy(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @mrb_get_args(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %6)
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @mrb_obj_equal(i32* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @mrb_obj_class(i32* %19, i32 %20)
  %22 = call i32 @mrb_obj_is_instance_of(i32* %17, i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @E_TYPE_ERROR, align 4
  %27 = call i32 @mrb_raise(i32* %25, i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %16
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mrb_array_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @E_TYPE_ERROR, align 4
  %35 = call i32 @mrb_raise(i32* %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mrb_ary_replace(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i64 @mrb_obj_equal(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_is_instance_of(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_class(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_array_p(i32) #1

declare dso_local i32 @mrb_ary_replace(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
