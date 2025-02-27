; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_pin_config_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_pin_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.nsp_gpio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @nsp_pin_config_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_pin_config_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nsp_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.nsp_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.nsp_gpio* %16, %struct.nsp_gpio** %8, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pinconf_to_config_param(i64 %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @nsp_pin_to_gpio(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %69 [
    i32 131, label %23
    i32 129, label %36
    i32 130, label %46
    i32 128, label %56
  ]

23:                                               ; preds = %3
  %24 = load %struct.nsp_gpio*, %struct.nsp_gpio** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @nsp_gpio_get_pull(%struct.nsp_gpio* %24, i32 %25, i32* %12, i32* %13)
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %72

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %3
  %37 = load %struct.nsp_gpio*, %struct.nsp_gpio** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @nsp_gpio_get_pull(%struct.nsp_gpio* %37, i32 %38, i32* %12, i32* %13)
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %72

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %3
  %47 = load %struct.nsp_gpio*, %struct.nsp_gpio** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @nsp_gpio_get_pull(%struct.nsp_gpio* %47, i32 %48, i32* %12, i32* %13)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %72

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %3
  %57 = load %struct.nsp_gpio*, %struct.nsp_gpio** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @nsp_gpio_get_strength(%struct.nsp_gpio* %57, i32 %58, i32* %11)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @pinconf_to_config_packed(i32 %65, i32 %66)
  %68 = load i64*, i64** %7, align 8
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %4, align 4
  br label %72

69:                                               ; preds = %3
  %70 = load i32, i32* @ENOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %64, %62, %53, %52, %43, %42, %33, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.nsp_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @nsp_pin_to_gpio(i32) #1

declare dso_local i32 @nsp_gpio_get_pull(%struct.nsp_gpio*, i32, i32*, i32*) #1

declare dso_local i32 @nsp_gpio_get_strength(%struct.nsp_gpio*, i32, i32*) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
