; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_print_modalias_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_print_modalias_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%X,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8, i64*, i32, i32)* @input_print_modalias_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_print_modalias_bits(i8* %0, i32 %1, i8 signext %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @max(i32 %16, i32 0)
  %18 = load i8, i8* %9, align 1
  %19 = sext i8 %18 to i32
  %20 = call i64 @snprintf(i8* %15, i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %56, %6
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i64*, i64** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @BIT_WORD(i32 %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @BIT_MASK(i32 %36)
  %38 = and i64 %35, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 @max(i32 %47, i32 0)
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @snprintf(i8* %44, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %40, %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %13, align 4
  ret i32 %60
}

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @BIT_WORD(i32) #1

declare dso_local i64 @BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
