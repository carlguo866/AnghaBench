; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt.c_fdt_next_tag.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt.c_fdt_next_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_ERR_TRUNCATED = common dso_local global i32 0, align 4
@FDT_TAGSIZE = common dso_local global i32 0, align 4
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_next_tag(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %15 = sub nsw i32 0, %14
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @FDT_TAGSIZE, align 4
  %20 = call i8* @fdt_offset_ptr(i8* %17, i32 %18, i32 %19)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 131, i32* %4, align 4
  br label %114

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fdt32_to_cpu(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @FDT_TAGSIZE, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %33 = sub nsw i32 0, %32
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %99 [
    i32 132, label %36
    i32 128, label %57
    i32 131, label %98
    i32 130, label %98
    i32 129, label %98
  ]

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %50, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = call i8* @fdt_offset_ptr(i8* %38, i32 %39, i32 1)
  store i8* %41, i8** %12, align 8
  br label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %37, label %52

52:                                               ; preds = %50
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 131, i32* %4, align 4
  br label %114

56:                                               ; preds = %52
  br label %100

57:                                               ; preds = %25
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @fdt_offset_ptr(i8* %58, i32 %59, i32 4)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 131, i32* %4, align 4
  br label %114

65:                                               ; preds = %57
  %66 = load i32, i32* @FDT_TAGSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 4, %67
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fdt32_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = add i64 %68, %72
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @fdt_version(i8* %78)
  %80 = icmp slt i32 %79, 16
  br i1 %80, label %81, label %97

81:                                               ; preds = %65
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fdt32_to_cpu(i32 %83)
  %85 = icmp sge i32 %84, 8
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fdt32_to_cpu(i32 %89)
  %91 = sub nsw i32 %87, %90
  %92 = srem i32 %91, 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %94, %86, %81, %65
  br label %100

98:                                               ; preds = %25, %25, %25
  br label %100

99:                                               ; preds = %25
  store i32 131, i32* %4, align 4
  br label %114

100:                                              ; preds = %98, %97, %56
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i8* @fdt_offset_ptr(i8* %101, i32 %102, i32 %105)
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  store i32 131, i32* %4, align 4
  br label %114

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @FDT_TAGALIGN(i32 %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %108, %99, %64, %55, %24
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i8* @fdt_offset_ptr(i8*, i32, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
