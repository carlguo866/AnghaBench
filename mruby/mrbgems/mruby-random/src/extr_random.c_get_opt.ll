; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_get_opt.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-random/src/extr_random.c_get_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"|o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_opt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = call i32 (...) @mrb_nil_value()
  store i32 %5, i32* %3, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @mrb_get_args(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @mrb_nil_p(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @mrb_to_int(i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @mrb_fixnum(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 0, %20
  %22 = call i32 @mrb_fixnum_value(i64 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %11
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_to_int(i32*, i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
