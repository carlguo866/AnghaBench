; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_create_dispex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_create_dispex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@dispex_info = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_dispex(i32* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = call i32* @heap_alloc_zero(i32 4)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %40

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %7, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32* [ %23, %22 ], [ @dispex_info, %24 ]
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @init_dispex(i32* %18, i32* %19, i32* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @heap_free(i32* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %25
  %37 = load i32*, i32** %10, align 8
  %38 = load i32**, i32*** %9, align 8
  store i32* %37, i32** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32, %15
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32* @heap_alloc_zero(i32) #1

declare dso_local i32 @init_dispex(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
