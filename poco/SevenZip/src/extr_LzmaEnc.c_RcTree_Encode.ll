; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_RcTree_Encode.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzmaEnc.c_RcTree_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @RcTree_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RcTree_Encode(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %10, align 4
  br label %13

13:                                               ; preds = %16, %4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @RangeEnc_EncodeBit(i32* %23, i32* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %13

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @RangeEnc_EncodeBit(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
