; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_create_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_create_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numberW = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@messageW = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@descriptionW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*, i32**)* @create_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_error(i32* %0, i32* %1, i64 %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @alloc_error(i32* %14, i32* null, i32* %15, i32** %12)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %74

22:                                               ; preds = %5
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* @numberW, align 4
  %25 = load i32, i32* @PROPF_WRITABLE, align 4
  %26 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @jsval_number(i32 %29)
  %31 = call i32 @jsdisp_define_data_property(i32* %23, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @jsdisp_release(i32* %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %74

39:                                               ; preds = %22
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @messageW, align 4
  %42 = load i32, i32* @PROPF_WRITABLE, align 4
  %43 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @jsval_string(i32* %47)
  %49 = call i32 @jsdisp_define_data_property(i32* %40, i32 %41, i32 %46, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @SUCCEEDED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %39
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @descriptionW, align 4
  %56 = load i32, i32* @PROPF_WRITABLE, align 4
  %57 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @jsval_string(i32* %59)
  %61 = call i32 @jsdisp_define_data_property(i32* %54, i32 %55, i32 %58, i32 %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %53, %39
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @jsdisp_release(i32* %67)
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %74

70:                                               ; preds = %62
  %71 = load i32*, i32** %12, align 8
  %72 = load i32**, i32*** %11, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* @S_OK, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %66, %35, %20
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @alloc_error(i32*, i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_define_data_property(i32*, i32, i32, i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
