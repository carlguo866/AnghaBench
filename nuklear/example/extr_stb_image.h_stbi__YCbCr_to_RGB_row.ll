; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__YCbCr_to_RGB_row.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__YCbCr_to_RGB_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32)* @stbi__YCbCr_to_RGB_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbi__YCbCr_to_RGB_row(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %114, %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %117

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 20
  %31 = add nsw i32 %30, 524288
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 128
  store i32 %37, i32* %18, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 128
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @float2fixed(float 0x3FF66E9780000000)
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @float2fixed(float 0x3FE6DA3C20000000)
  %52 = sub nsw i32 0, %51
  %53 = mul nsw i32 %50, %52
  %54 = add nsw i32 %49, %53
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @float2fixed(float 0x3FD60663C0000000)
  %57 = sub nsw i32 0, %56
  %58 = mul nsw i32 %55, %57
  %59 = and i32 %58, -65536
  %60 = add i32 %54, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @float2fixed(float 0x3FFC5A1CA0000000)
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = ashr i32 %66, 20
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = ashr i32 %68, 20
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = ashr i32 %70, 20
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ugt i32 %72, 255
  br i1 %73, label %74, label %80

74:                                               ; preds = %24
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %79

78:                                               ; preds = %74
  store i32 255, i32* %15, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %24
  %81 = load i32, i32* %16, align 4
  %82 = icmp ugt i32 %81, 255
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %16, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %16, align 4
  br label %88

87:                                               ; preds = %83
  store i32 255, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %80
  %90 = load i32, i32* %17, align 4
  %91 = icmp ugt i32 %90, 255
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %17, align 4
  br label %97

96:                                               ; preds = %92
  store i32 255, i32* %17, align 4
  br label %97

97:                                               ; preds = %96, %95
  br label %98

98:                                               ; preds = %97, %89
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  store i32 255, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %7, align 8
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %20

117:                                              ; preds = %20
  ret void
}

declare dso_local i32 @float2fixed(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
