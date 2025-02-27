; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_read_coef.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_regmap.c_hda_reg_read_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AC_VERB_SET_COEF_INDEX = common dso_local global i32 0, align 4
@AC_VERB_GET_COEF_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32, i32*)* @hda_reg_read_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_reg_read_coef(%struct.hdac_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %11 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -1048321
  %20 = load i32, i32* @AC_VERB_SET_COEF_INDEX, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %23, i32 %24, i32 0, i32* null)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, -1048576
  %33 = load i32, i32* @AC_VERB_GET_COEF_INDEX, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @snd_hdac_exec_verb(%struct.hdac_device* %36, i32 %37, i32 0, i32* %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %30, %28, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @snd_hdac_exec_verb(%struct.hdac_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
