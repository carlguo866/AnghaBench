; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_branch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@ARM_CONSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @branch(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @UT32_MAX, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ARM_CONSTANT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 134217727
  br i1 %36, label %81, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 268435455
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 3
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 2
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 24
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 16
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 255
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 24
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 16
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %11, align 4
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %53, %34, %24
  br label %111

82:                                               ; preds = %3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 31
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %82
  store i32 -1, i32* %4, align 4
  br label %113

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %96, 5
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = ashr i32 %98, 8
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 255
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = shl i32 %103, 24
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %13, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %95, %81
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %94
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
