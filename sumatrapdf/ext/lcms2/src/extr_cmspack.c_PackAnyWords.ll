; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackAnyWords.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackAnyWords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i32)* @PackAnyWords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackAnyWords(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @T_CHANNELS(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @T_ENDIAN16(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @T_DOSWAP(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @T_FLAVOR(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @T_EXTRA(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @T_SWAPFIRST(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %16, align 4
  %48 = xor i32 %46, %47
  store i32 %48, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %18, align 8
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %5
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %9, align 8
  br label %58

58:                                               ; preds = %52, %5
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %96, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %20, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %20, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = phi i32 [ %70, %66 ], [ %72, %71 ]
  store i32 %74, i32* %21, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @CHANGE_ENDIAN(i32 %83)
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %82, %73
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @REVERSE_FLAVOR_16(i32 %89)
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %9, align 8
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %20, align 4
  br label %59

99:                                               ; preds = %59
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %9, align 8
  br label %108

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i32*, i32** %18, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memmove(i32* %116, i32* %117, i32 %122)
  %124 = load i32, i32* %19, align 4
  %125 = load i32*, i32** %18, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %114, %111, %108
  %127 = load i32*, i32** %9, align 8
  ret i32* %127
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @T_ENDIAN16(i32) #1

declare dso_local i32 @T_DOSWAP(i32) #1

declare dso_local i32 @T_FLAVOR(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

declare dso_local i32 @T_SWAPFIRST(i32) #1

declare dso_local i32 @CHANGE_ENDIAN(i32) #1

declare dso_local i32 @REVERSE_FLAVOR_16(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
