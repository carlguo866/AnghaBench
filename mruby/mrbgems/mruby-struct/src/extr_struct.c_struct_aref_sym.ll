; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_sym.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-struct/src/extr_struct.c_struct_aref_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"no member '%n' in struct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @struct_aref_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @struct_aref_sym(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @struct_members(i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @RARRAY_PTR(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @RARRAY_LEN(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32* @RSTRUCT_PTR(i32 %21)
  store i32* %22, i32** %9, align 8
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %46, %3
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @mrb_symbol_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @mrb_symbol(i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %4, align 4
  br label %55

45:                                               ; preds = %35, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @mrb_name_error(i32* %50, i64 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = call i32 (...) @mrb_nil_value()
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %40
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @struct_members(i32*, i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32* @RSTRUCT_PTR(i32) #1

declare dso_local i64 @mrb_symbol_p(i32) #1

declare dso_local i64 @mrb_symbol(i32) #1

declare dso_local i32 @mrb_name_error(i32*, i64, i8*, i64) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
