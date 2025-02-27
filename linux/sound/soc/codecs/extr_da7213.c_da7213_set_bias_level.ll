; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7213.c_da7213_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7213_priv = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to enable mclk\0A\00", align 1
@DA7213_REFERENCES = common dso_local global i32 0, align 4
@DA7213_VMID_EN = common dso_local global i32 0, align 4
@DA7213_BIAS_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @da7213_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da7213_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da7213_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.da7213_priv* %9, %struct.da7213_priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %70 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %37
    i32 131, label %63
  ]

11:                                               ; preds = %2
  br label %70

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %14 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %13)
  %15 = icmp eq i32 %14, 128
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.da7213_priv*, %struct.da7213_priv** %6, align 8
  %18 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.da7213_priv*, %struct.da7213_priv** %6, align 8
  %23 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35, %12
  br label %70

37:                                               ; preds = %2
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %39 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %38)
  %40 = icmp eq i32 %39, 131
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %43 = load i32, i32* @DA7213_REFERENCES, align 4
  %44 = load i32, i32* @DA7213_VMID_EN, align 4
  %45 = load i32, i32* @DA7213_BIAS_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DA7213_VMID_EN, align 4
  %48 = load i32, i32* @DA7213_BIAS_EN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %42, i32 %43, i32 %46, i32 %49)
  br label %62

51:                                               ; preds = %37
  %52 = load %struct.da7213_priv*, %struct.da7213_priv** %6, align 8
  %53 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.da7213_priv*, %struct.da7213_priv** %6, align 8
  %58 = getelementptr inbounds %struct.da7213_priv, %struct.da7213_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @clk_disable_unprepare(i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %41
  br label %70

63:                                               ; preds = %2
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %65 = load i32, i32* @DA7213_REFERENCES, align 4
  %66 = load i32, i32* @DA7213_VMID_EN, align 4
  %67 = load i32, i32* @DA7213_BIAS_EN, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %2, %63, %62, %36, %11
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.da7213_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
