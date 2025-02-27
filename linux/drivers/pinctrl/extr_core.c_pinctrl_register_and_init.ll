; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_and_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_core.c_pinctrl_register_and_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_desc = type { i32 }
%struct.device = type { i32 }
%struct.pinctrl_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_register_and_init(%struct.pinctrl_desc* %0, %struct.device* %1, i8* %2, %struct.pinctrl_dev** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pinctrl_dev**, align 8
  %10 = alloca %struct.pinctrl_dev*, align 8
  store %struct.pinctrl_desc* %0, %struct.pinctrl_desc** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.pinctrl_dev** %3, %struct.pinctrl_dev*** %9, align 8
  %11 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.pinctrl_dev* @pinctrl_init_controller(%struct.pinctrl_desc* %11, %struct.device* %12, i8* %13)
  store %struct.pinctrl_dev* %14, %struct.pinctrl_dev** %10, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %16 = call i64 @IS_ERR(%struct.pinctrl_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.pinctrl_dev* %19)
  store i32 %20, i32* %5, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %10, align 8
  %23 = load %struct.pinctrl_dev**, %struct.pinctrl_dev*** %9, align 8
  store %struct.pinctrl_dev* %22, %struct.pinctrl_dev** %23, align 8
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.pinctrl_dev* @pinctrl_init_controller(%struct.pinctrl_desc*, %struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
