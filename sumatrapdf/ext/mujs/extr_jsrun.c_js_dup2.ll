; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_dup2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACK = common dso_local global i32* null, align 8
@TOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_dup2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @CHECKSTACK(i32 2)
  %4 = load i32*, i32** @STACK, align 8
  %5 = load i64, i64* @TOP, align 8
  %6 = sub i64 %5, 2
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @STACK, align 8
  %10 = load i64, i64* @TOP, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load i32*, i32** @STACK, align 8
  %13 = load i64, i64* @TOP, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @STACK, align 8
  %18 = load i64, i64* @TOP, align 8
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i64, i64* @TOP, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* @TOP, align 8
  ret void
}

declare dso_local i32 @CHECKSTACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
