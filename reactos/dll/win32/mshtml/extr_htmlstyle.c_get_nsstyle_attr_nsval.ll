; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_attr_nsval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_htmlstyle.c_get_nsstyle_attr_nsval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@style_tbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"SetProperty failed: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @get_nsstyle_attr_nsval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nsstyle_attr_nsval(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @style_tbl, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nsAString_InitDepend(i32* %8, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @nsIDOMCSSStyleDeclaration_GetPropertyValue(i32* %16, i32* %8, i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @NS_FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @E_FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = call i32 @nsAString_Finish(i32* %8)
  %28 = load i32, i32* @NS_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @nsAString_InitDepend(i32*, i32) #1

declare dso_local i32 @nsIDOMCSSStyleDeclaration_GetPropertyValue(i32*, i32*, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
