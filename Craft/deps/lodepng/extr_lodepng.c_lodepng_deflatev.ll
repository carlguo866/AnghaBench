; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_deflatev.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_deflatev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, %struct.TYPE_5__*)* @lodepng_deflatev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lodepng_deflatev(i32* %0, i8* %1, i64 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %14, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 61, i32* %5, align 4
  br label %132

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @deflateNoCompression(i32* %30, i8* %31, i64 %32)
  store i32 %33, i32* %5, align 4
  br label %132

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %12, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = udiv i64 %42, 8
  %44 = add i64 %43, 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i64 65535, i64* %12, align 8
  br label %48

48:                                               ; preds = %47, %41
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  %56 = load i64, i64* %12, align 8
  %57 = udiv i64 %55, %56
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i64 1, i64* %13, align 8
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hash_init(i32* %15, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %132

70:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %71

71:                                               ; preds = %126, %70
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %129

81:                                               ; preds = %79
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub i64 %83, 1
  %85 = icmp eq i64 %82, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = mul i64 %87, %88
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %81
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %18, align 8
  br label %98

98:                                               ; preds = %96, %81
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32*, i32** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @deflateFixed(i32* %104, i64* %14, i32* %15, i8* %105, i64 %106, i64 %107, %struct.TYPE_5__* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  br label %125

111:                                              ; preds = %98
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i32*, i32** %6, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @deflateDynamic(i32* %117, i64* %14, i32* %15, i8* %118, i64 %119, i64 %120, %struct.TYPE_5__* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %116, %111
  br label %125

125:                                              ; preds = %124, %103
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %71

129:                                              ; preds = %79
  %130 = call i32 @hash_cleanup(i32* %15)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %129, %68, %29, %23
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @deflateNoCompression(i32*, i8*, i64) #1

declare dso_local i32 @hash_init(i32*, i32) #1

declare dso_local i32 @deflateFixed(i32*, i64*, i32*, i8*, i64, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @deflateDynamic(i32*, i64*, i32*, i8*, i64, i64, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @hash_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
