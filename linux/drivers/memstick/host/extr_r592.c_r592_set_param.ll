; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.r592_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*, i32, i32)* @r592_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_set_param(%struct.memstick_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r592_device*, align 8
  store %struct.memstick_host* %0, %struct.memstick_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %10 = call %struct.r592_device* @memstick_priv(%struct.memstick_host* %9)
  store %struct.r592_device* %10, %struct.r592_device** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %34 [
    i32 131, label %12
    i32 133, label %23
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 130, label %17
  ]

14:                                               ; preds = %12
  %15 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %16 = call i32 @r592_enable_device(%struct.r592_device* %15, i32 1)
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %12
  %18 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %19 = call i32 @r592_enable_device(%struct.r592_device* %18, i32 0)
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 132, label %28
  ]

25:                                               ; preds = %23
  %26 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %27 = call i32 @r592_set_mode(%struct.r592_device* %26, i32 0)
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %23
  %29 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %30 = call i32 @r592_set_mode(%struct.r592_device* %29, i32 1)
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31, %28, %25, %20, %17, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.r592_device* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @r592_enable_device(%struct.r592_device*, i32) #1

declare dso_local i32 @r592_set_mode(%struct.r592_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
