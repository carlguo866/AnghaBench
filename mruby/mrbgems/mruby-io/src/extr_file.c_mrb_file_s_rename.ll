; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_rename.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file.c_mrb_file_s_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(%v, %v)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_file_s_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_file_s_rename(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @mrb_get_args(i32* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @RSTRING_CSTR(i32* %12, i32 %13)
  %15 = call i8* @mrb_locale_from_utf8(i32 %14, i32 -1)
  store i8* %15, i8** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @RSTRING_CSTR(i32* %16, i32 %17)
  %19 = call i8* @mrb_locale_from_utf8(i32 %18, i32 -1)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @rename(i8* %20, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @mrb_locale_free(i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @mrb_locale_free(i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mrb_format(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  %35 = call i32 @RSTRING_CSTR(i32* %30, i32 %34)
  %36 = call i32 @mrb_sys_fail(i32* %29, i32 %35)
  %37 = call i32 @mrb_fixnum_value(i32 -1)
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @mrb_locale_free(i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @mrb_locale_free(i8* %41)
  %43 = call i32 @mrb_fixnum_value(i32 0)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @RSTRING_CSTR(i32*, i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
