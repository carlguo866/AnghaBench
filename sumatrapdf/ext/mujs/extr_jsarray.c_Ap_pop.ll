; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_pop.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsarray.c_Ap_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Ap_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ap_pop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @js_getlength(i32* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i32 @js_getindex(i32* %9, i32 0, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @js_delindex(i32* %13, i32 0, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @js_setlength(i32* %17, i32 0, i32 %19)
  br label %26

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @js_setlength(i32* %22, i32 0, i32 0)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_pushundefined(i32* %24)
  br label %26

26:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @js_getlength(i32*, i32) #1

declare dso_local i32 @js_getindex(i32*, i32, i32) #1

declare dso_local i32 @js_delindex(i32*, i32, i32) #1

declare dso_local i32 @js_setlength(i32*, i32, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
