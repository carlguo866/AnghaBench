; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s8_uint_d24_float.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_convert_s8_uint_d24_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @convert_s8_uint_d24_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_s8_uint_d24_float(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %25

25:                                               ; preds = %98, %9
  %26 = load i32, i32* %21, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %94, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32* %45, i32** %22, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %15, align 4
  %49 = mul i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %14, align 4
  %54 = mul i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = bitcast i32* %56 to float*
  store float* %57, float** %23, align 8
  %58 = load float*, float** %23, align 8
  %59 = bitcast float* %58 to i32*
  store i32* %59, i32** %24, align 8
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %90, %34
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = load i32*, i32** %22, align 8
  %66 = load i32, i32* %19, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -256
  %71 = lshr i32 %70, 8
  %72 = call float @float_24_to_32(i32 %71)
  %73 = load float*, float** %23, align 8
  %74 = load i32, i32* %19, align 4
  %75 = mul i32 %74, 2
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %73, i64 %76
  store float %72, float* %77, align 4
  %78 = load i32*, i32** %22, align 8
  %79 = load i32, i32* %19, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %24, align 8
  %85 = load i32, i32* %19, align 4
  %86 = mul i32 %85, 2
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %19, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %60

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %20, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %20, align 4
  br label %30

97:                                               ; preds = %30
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %21, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %21, align 4
  br label %25

101:                                              ; preds = %25
  ret void
}

declare dso_local float @float_24_to_32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
