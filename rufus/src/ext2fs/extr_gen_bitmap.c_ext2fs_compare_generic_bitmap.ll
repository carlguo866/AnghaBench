; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_compare_generic_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_compare_generic_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_compare_generic_bitmap(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %11, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %4
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %5, align 8
  br label %109

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %29
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %5, align 8
  br label %109

40:                                               ; preds = %32
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %73, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %73, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = udiv i64 %69, 8
  %71 = call i64 @memcmp(i32 %59, i32 %62, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56, %48, %40
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %5, align 8
  br label %109

75:                                               ; preds = %56
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = srem i64 %85, 8
  %87 = sub nsw i64 %78, %86
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %105, %75
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @ext2fs_fast_test_block_bitmap(i32 %95, i64 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i64, i64* %12, align 8
  %100 = call i64 @ext2fs_fast_test_block_bitmap(i32 %98, i64 %99)
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* %7, align 8
  store i64 %103, i64* %5, align 8
  br label %109

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %12, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %12, align 8
  br label %88

108:                                              ; preds = %88
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %108, %102, %73, %38, %27
  %110 = load i64, i64* %5, align 8
  ret i64 %110
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @ext2fs_fast_test_block_bitmap(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
