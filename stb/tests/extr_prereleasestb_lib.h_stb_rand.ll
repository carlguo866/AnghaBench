; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_rand.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__mt_buffer = common dso_local global i64* null, align 8
@stb__mt_index = common dso_local global i32 0, align 4
@STB__MT_LEN = common dso_local global i32 0, align 4
@STB__MT_IB = common dso_local global i32 0, align 4
@STB__MT_IA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @stb_rand() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i64*, i64** @stb__mt_buffer, align 8
  store i64* %6, i64** %1, align 8
  %7 = load i32, i32* @stb__mt_index, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @STB__MT_LEN, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %108

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* @STB__MT_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @stb_srand(i32 0)
  br label %23

23:                                               ; preds = %21, %14
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STB__MT_IB, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load i64*, i64** %1, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i64 @STB__TWIST(i64* %29, i32 %30, i32 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64*, i64** %1, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @STB__MT_IA, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %3, align 8
  %42 = lshr i64 %41, 1
  %43 = xor i64 %40, %42
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @STB__MAGIC(i64 %44)
  %46 = xor i64 %43, %45
  %47 = load i64*, i64** %1, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %28
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %24

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %83, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @STB__MT_LEN, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load i64*, i64** %1, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i64 @STB__TWIST(i64* %61, i32 %62, i32 %64)
  store i64 %65, i64* %3, align 8
  %66 = load i64*, i64** %1, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @STB__MT_IB, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %3, align 8
  %74 = lshr i64 %73, 1
  %75 = xor i64 %72, %74
  %76 = load i64, i64* %3, align 8
  %77 = call i64 @STB__MAGIC(i64 %76)
  %78 = xor i64 %75, %77
  %79 = load i64*, i64** %1, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  store i64 %78, i64* %82, align 8
  br label %83

83:                                               ; preds = %60
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %55

86:                                               ; preds = %55
  %87 = load i64*, i64** %1, align 8
  %88 = load i32, i32* @STB__MT_LEN, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i64 @STB__TWIST(i64* %87, i32 %89, i32 0)
  store i64 %90, i64* %3, align 8
  %91 = load i64*, i64** %1, align 8
  %92 = load i32, i32* @STB__MT_IA, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = lshr i64 %97, 1
  %99 = xor i64 %96, %98
  %100 = load i64, i64* %3, align 8
  %101 = call i64 @STB__MAGIC(i64 %100)
  %102 = xor i64 %99, %101
  %103 = load i64*, i64** %1, align 8
  %104 = load i32, i32* @STB__MT_LEN, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  store i64 %102, i64* %107, align 8
  br label %108

108:                                              ; preds = %86, %0
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* @stb__mt_index, align 4
  %113 = load i64*, i64** %1, align 8
  %114 = bitcast i64* %113 to i8*
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = bitcast i8* %117 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %4, align 8
  %121 = lshr i64 %120, 11
  %122 = load i64, i64* %4, align 8
  %123 = xor i64 %122, %121
  store i64 %123, i64* %4, align 8
  %124 = load i64, i64* %4, align 8
  %125 = shl i64 %124, 7
  %126 = and i64 %125, 2636928640
  %127 = load i64, i64* %4, align 8
  %128 = xor i64 %127, %126
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = shl i64 %129, 15
  %131 = and i64 %130, 4022730752
  %132 = load i64, i64* %4, align 8
  %133 = xor i64 %132, %131
  store i64 %133, i64* %4, align 8
  %134 = load i64, i64* %4, align 8
  %135 = lshr i64 %134, 18
  %136 = load i64, i64* %4, align 8
  %137 = xor i64 %136, %135
  store i64 %137, i64* %4, align 8
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i32 @stb_srand(i32) #1

declare dso_local i64 @STB__TWIST(i64*, i32, i32) #1

declare dso_local i64 @STB__MAGIC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
