; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprfun.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_reprfun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8** }

@.str = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c") { [byte code] }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, %struct.TYPE_3__*)* @reprfun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reprfun(i32* %0, i32** %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = call i32 @js_puts(i32* %8, i32** %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @js_puts(i32* %11, i32** %12, i8* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = call i32 @js_putc(i32* %17, i32** %18, i8 signext 40)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = call i32 @js_puts(i32* %30, i32** %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %4, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @js_puts(i32* %34, i32** %35, i8* %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load i32*, i32** %4, align 8
  %49 = load i32**, i32*** %5, align 8
  %50 = call i32 @js_puts(i32* %48, i32** %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i32 @js_putc(i32*, i32**, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
