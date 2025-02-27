; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_get_irq_byname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_get_irq_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_get_irq_byname(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @__platform_get_irq_byname(%struct.platform_device* %6, i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @EPROBE_DEFER, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @__platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
