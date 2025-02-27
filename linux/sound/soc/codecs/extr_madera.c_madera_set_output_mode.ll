; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_output_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_set_output_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@MADERA_MAX_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MADERA_OUTPUT_PATH_CONFIG_1L = common dso_local global i32 0, align 4
@MADERA_OUT1_MONO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_set_output_mode(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MADERA_MAX_OUTPUT, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load i32, i32* @MADERA_OUTPUT_PATH_CONFIG_1L, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 8
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @MADERA_OUT1_MONO, align 4
  store i32 %29, i32* %9, align 4
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MADERA_OUT1_MONO, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %39, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
