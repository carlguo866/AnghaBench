; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltRegisterTestModule.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltRegisterTestModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XSLT_DEFAULT_URL = common dso_local global i64 0, align 8
@xsltExtInitTest = common dso_local global i32 0, align 4
@xsltExtShutdownTest = common dso_local global i32 0, align 4
@xsltExtStyleInitTest = common dso_local global i32 0, align 4
@xsltExtStyleShutdownTest = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@xsltExtFunctionTest = common dso_local global i32 0, align 4
@xsltExtElementPreCompTest = common dso_local global i32 0, align 4
@xsltExtElementTest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltRegisterTestModule() #0 {
  %1 = call i32 (...) @xsltInitGlobals()
  %2 = load i64, i64* @XSLT_DEFAULT_URL, align 8
  %3 = inttoptr i64 %2 to i32*
  %4 = load i32, i32* @xsltExtInitTest, align 4
  %5 = load i32, i32* @xsltExtShutdownTest, align 4
  %6 = load i32, i32* @xsltExtStyleInitTest, align 4
  %7 = load i32, i32* @xsltExtStyleShutdownTest, align 4
  %8 = call i32 @xsltRegisterExtModuleFull(i32* %3, i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load i64, i64* @XSLT_DEFAULT_URL, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* @xsltExtFunctionTest, align 4
  %12 = call i32 @xsltRegisterExtModuleFunction(i32* bitcast ([5 x i8]* @.str to i32*), i32* %10, i32 %11)
  %13 = load i64, i64* @XSLT_DEFAULT_URL, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* @xsltExtElementPreCompTest, align 4
  %16 = load i32, i32* @xsltExtElementTest, align 4
  %17 = call i32 @xsltRegisterExtModuleElement(i32* bitcast ([5 x i8]* @.str to i32*), i32* %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @xsltInitGlobals(...) #1

declare dso_local i32 @xsltRegisterExtModuleFull(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @xsltRegisterExtModuleFunction(i32*, i32*, i32) #1

declare dso_local i32 @xsltRegisterExtModuleElement(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
