; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_extract_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_extract_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @wined3d_extract_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_extract_bits(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @CHAR_BIT, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %7, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = sub i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 1, %48
  %50 = sub i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %41, %3
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
