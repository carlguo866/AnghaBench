; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdguiut.c_FormatSizeBytes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdguiut.c_FormatSizeBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c",%03lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @FormatSizeBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FormatSizeBytes(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 1000
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 1000
  store i32 %14, i32* %5, align 4
  br label %7

15:                                               ; preds = %7
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %17, %18
  %20 = call i32 @sprintf(i64 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %24, %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = srem i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 1000
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %34, %35
  %37 = call i32 @sprintf(i64 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

declare dso_local i32 @sprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
