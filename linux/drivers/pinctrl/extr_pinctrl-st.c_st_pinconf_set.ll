; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pinconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.st_pinctrl = type { i32 }
%struct.st_pio_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @st_pinconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pinconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_pinctrl*, align 8
  %11 = alloca %struct.st_pio_control*, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @st_gpio_pin(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.st_pinctrl* %16, %struct.st_pinctrl** %10, align 8
  %17 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev* %17, i32 %18)
  store %struct.st_pio_control* %19, %struct.st_pio_control** %11, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %42, %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.st_pio_control*, %struct.st_pio_control** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @st_pinconf_set_config(%struct.st_pio_control* %25, i32 %26, i64 %31)
  %33 = load %struct.st_pinctrl*, %struct.st_pinctrl** %10, align 8
  %34 = load %struct.st_pio_control*, %struct.st_pio_control** %11, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @st_pinconf_set_retime(%struct.st_pinctrl* %33, %struct.st_pio_control* %34, i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %20

45:                                               ; preds = %20
  ret i32 0
}

declare dso_local i32 @st_gpio_pin(i32) #1

declare dso_local %struct.st_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.st_pio_control* @st_get_pio_control(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @st_pinconf_set_config(%struct.st_pio_control*, i32, i64) #1

declare dso_local i32 @st_pinconf_set_retime(%struct.st_pinctrl*, %struct.st_pio_control*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
