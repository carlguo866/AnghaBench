; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_chdir.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-dir/src/extr_dir.c_mrb_dir_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_dir_chdir(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @mrb_get_args(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @mrb_str_to_cstr(i32* %9, i32 %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @chdir(i8* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @mrb_sys_fail(i32* %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @mrb_fixnum_value(i32 0)
  ret i32 %20
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
