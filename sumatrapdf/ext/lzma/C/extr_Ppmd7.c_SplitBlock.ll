; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Ppmd7.c_SplitBlock.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_Ppmd7.c_SplitBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32)* @SplitBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SplitBlock(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @I2U(i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @I2U(i32 %14)
  %16 = sub i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @I2U(i32 %18)
  %20 = call i32 @U2B(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %17, i64 %21
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @U2I(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = call i32 @I2U(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = call i32 @I2U(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @U2B(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %33, i64 %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub i32 %38, %39
  %41 = sub i32 %40, 1
  %42 = call i32 @InsertNode(i32* %32, i8* %37, i32 %41)
  br label %43

43:                                               ; preds = %28, %4
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @InsertNode(i32* %44, i8* %45, i32 %46)
  ret void
}

declare dso_local i32 @I2U(i32) #1

declare dso_local i32 @U2B(i32) #1

declare dso_local i32 @U2I(i32) #1

declare dso_local i32 @InsertNode(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
