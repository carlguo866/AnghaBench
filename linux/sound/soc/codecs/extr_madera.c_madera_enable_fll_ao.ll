; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_enable_fll_ao.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_enable_fll_ao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i64, %struct.madera* }
%struct.madera = type { i32, i32 }
%struct.reg_sequence = type { i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Enabling FLL_AO, initially %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@MADERA_FLLAO_CONTROL_1_OFFS = common dso_local global i64 0, align 8
@MADERA_FLL_AO_HOLD = common dso_local global i32 0, align 4
@MADERA_FLLAO_CONTROL_6 = common dso_local global i64 0, align 8
@MADERA_FLL_AO_REFCLK_SRC_MASK = common dso_local global i32 0, align 4
@MADERA_FLL_AO_REFCLK_SRC_SHIFT = common dso_local global i32 0, align 4
@MADERA_FLL_AO_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, %struct.reg_sequence*, i32)* @madera_enable_fll_ao to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_enable_fll_ao(%struct.madera_fll* %0, %struct.reg_sequence* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.madera_fll*, align 8
  %6 = alloca %struct.reg_sequence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.madera*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %5, align 8
  store %struct.reg_sequence* %1, %struct.reg_sequence** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %13 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %12, i32 0, i32 2
  %14 = load %struct.madera*, %struct.madera** %13, align 8
  store %struct.madera* %14, %struct.madera** %8, align 8
  %15 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %16 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %17 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @madera_is_enabled_fll(%struct.madera_fll* %15, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %128

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load %struct.madera*, %struct.madera** %8, align 8
  %29 = getelementptr inbounds %struct.madera, %struct.madera* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_get_sync(i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @madera_fll_dbg(%struct.madera_fll* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %40 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %39, i32 0, i32 2
  %41 = load %struct.madera*, %struct.madera** %40, align 8
  %42 = getelementptr inbounds %struct.madera, %struct.madera* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %45 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MADERA_FLLAO_CONTROL_1_OFFS, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @MADERA_FLL_AO_HOLD, align 4
  %50 = load i32, i32* @MADERA_FLL_AO_HOLD, align 4
  %51 = call i32 @regmap_update_bits(i32 %43, i64 %48, i32 %49, i32 %50)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %97, %32
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %52
  %57 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %57, i64 %59
  %61 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %10, align 4
  %63 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %63, i64 %65
  %67 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MADERA_FLLAO_CONTROL_6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %56
  %72 = load i32, i32* @MADERA_FLL_AO_REFCLK_SRC_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %77 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MADERA_FLL_AO_REFCLK_SRC_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* @MADERA_FLL_AO_REFCLK_SRC_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %71, %56
  %86 = load %struct.madera*, %struct.madera** %8, align 8
  %87 = getelementptr inbounds %struct.madera, %struct.madera* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %89, i64 %91
  %93 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @regmap_write(i32 %88, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %52

100:                                              ; preds = %52
  %101 = load %struct.madera*, %struct.madera** %8, align 8
  %102 = getelementptr inbounds %struct.madera, %struct.madera* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %105 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MADERA_FLLAO_CONTROL_1_OFFS, align 8
  %108 = add nsw i64 %106, %107
  %109 = load i32, i32* @MADERA_FLL_AO_ENA, align 4
  %110 = load i32, i32* @MADERA_FLL_AO_ENA, align 4
  %111 = call i32 @regmap_update_bits(i32 %103, i64 %108, i32 %109, i32 %110)
  %112 = load %struct.madera*, %struct.madera** %8, align 8
  %113 = getelementptr inbounds %struct.madera, %struct.madera* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %116 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MADERA_FLLAO_CONTROL_1_OFFS, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32, i32* @MADERA_FLL_AO_HOLD, align 4
  %121 = call i32 @regmap_update_bits(i32 %114, i64 %119, i32 %120, i32 0)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %100
  %125 = load %struct.madera_fll*, %struct.madera_fll** %5, align 8
  %126 = call i32 @madera_wait_for_fll(%struct.madera_fll* %125, i32 1)
  br label %127

127:                                              ; preds = %124, %100
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %127, %22
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @madera_is_enabled_fll(%struct.madera_fll*, i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @madera_fll_dbg(%struct.madera_fll*, i8*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @madera_wait_for_fll(%struct.madera_fll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
