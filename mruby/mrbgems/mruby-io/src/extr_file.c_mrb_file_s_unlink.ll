; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_unlink.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_s_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_s_unlink(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %5, i64* %7)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mrb_ensure_string_type(i32* %18, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @RSTRING_CSTR(i32* %24, i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i8* @mrb_locale_from_utf8(i8* %27, i32 -1)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @UNLINK(i8* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @mrb_locale_free(i8* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @mrb_sys_fail(i32* %35, i8* %36)
  br label %38

38:                                               ; preds = %32, %17
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @mrb_locale_free(i8* %39)
  br label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %13

44:                                               ; preds = %13
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @mrb_fixnum_value(i64 %45)
  ret i32 %46
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @mrb_ensure_string_type(i32*, i32) #1

declare dso_local i8* @RSTRING_CSTR(i32*, i32) #1

declare dso_local i8* @mrb_locale_from_utf8(i8*, i32) #1

declare dso_local i64 @UNLINK(i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
