; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_attr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1
@style_tbl = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_nsstyle_attr(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @nsAString_Init(i32* %9, i32* null)
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @get_nsstyle_attr_nsval(i32* %13, i64 %14, i32* %9)
  %16 = call i32 @nsAString_GetData(i32* %9, i32** %10)
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @nsstyle_to_bstr(i32* %17, i32 %18, i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = call i32 @nsAString_Finish(i32* %9)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @style_tbl, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @debugstr_w(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debugstr_w(i32 %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* %11, align 4
  ret i32 %32
}

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @get_nsstyle_attr_nsval(i32*, i64, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32 @nsstyle_to_bstr(i32*, i32, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
