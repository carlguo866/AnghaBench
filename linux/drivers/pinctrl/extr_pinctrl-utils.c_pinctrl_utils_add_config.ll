; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-utils.c_pinctrl_utils_add_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"krealloc(configs) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pinctrl_utils_add_config(%struct.pinctrl_dev* %0, i64** %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i64**, i64*** %7, align 8
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64* @krealloc(i64* %18, i32 %22, i32 %23)
  store i64* %24, i64** %12, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %29 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %4
  %35 = load i64, i64* %9, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %35, i64* %39, align 8
  %40 = load i64*, i64** %12, align 8
  %41 = load i64**, i64*** %7, align 8
  store i64* %40, i64** %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %34, %27
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64* @krealloc(i64*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
