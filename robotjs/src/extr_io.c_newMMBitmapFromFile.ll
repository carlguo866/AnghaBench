; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_io.c_newMMBitmapFromFile.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_io.c_newMMBitmapFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMMIOUnsupportedTypeError = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @newMMBitmapFromFile(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %17 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @newMMBitmapFromBMP(i8* %10, i32* %11)
  store i32* %12, i32** %4, align 8
  br label %24

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32* @newMMBitmapFromPNG(i8* %14, i32* %15)
  store i32* %16, i32** %4, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @kMMIOUnsupportedTypeError, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  store i32* null, i32** %4, align 8
  br label %24

24:                                               ; preds = %23, %13, %9
  %25 = load i32*, i32** %4, align 8
  ret i32* %25
}

declare dso_local i32* @newMMBitmapFromBMP(i8*, i32*) #1

declare dso_local i32* @newMMBitmapFromPNG(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
