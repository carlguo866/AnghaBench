; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryContains.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_py_both.h_DictionaryContains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DICT_FLAG_RETURN_BOOL = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @DictionaryContains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DictionaryContains(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @DICT_FLAG_RETURN_BOOL, align 4
  %11 = call i32* @_DictionaryItem(i32* %8, i32* %9, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** @Py_True, align 8
  %18 = icmp eq i32* %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @Py_DECREF(i32* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32* @_DictionaryItem(i32*, i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
