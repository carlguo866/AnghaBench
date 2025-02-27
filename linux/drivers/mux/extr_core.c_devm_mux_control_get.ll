; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_devm_mux_control_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_core.c_devm_mux_control_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mux_control = type { i32 }
%struct.device = type { i32 }

@devm_mux_control_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mux_control* @devm_mux_control_get(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.mux_control*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mux_control**, align 8
  %7 = alloca %struct.mux_control*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @devm_mux_control_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mux_control** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.mux_control** %10, %struct.mux_control*** %6, align 8
  %11 = load %struct.mux_control**, %struct.mux_control*** %6, align 8
  %12 = icmp ne %struct.mux_control** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.mux_control* @ERR_PTR(i32 %15)
  store %struct.mux_control* %16, %struct.mux_control** %3, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call %struct.mux_control* @mux_control_get(%struct.device* %18, i8* %19)
  store %struct.mux_control* %20, %struct.mux_control** %7, align 8
  %21 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %22 = call i64 @IS_ERR(%struct.mux_control* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.mux_control**, %struct.mux_control*** %6, align 8
  %26 = call i32 @devres_free(%struct.mux_control** %25)
  %27 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  store %struct.mux_control* %27, %struct.mux_control** %3, align 8
  br label %35

28:                                               ; preds = %17
  %29 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  %30 = load %struct.mux_control**, %struct.mux_control*** %6, align 8
  store %struct.mux_control* %29, %struct.mux_control** %30, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.mux_control**, %struct.mux_control*** %6, align 8
  %33 = call i32 @devres_add(%struct.device* %31, %struct.mux_control** %32)
  %34 = load %struct.mux_control*, %struct.mux_control** %7, align 8
  store %struct.mux_control* %34, %struct.mux_control** %3, align 8
  br label %35

35:                                               ; preds = %28, %24, %13
  %36 = load %struct.mux_control*, %struct.mux_control** %3, align 8
  ret %struct.mux_control* %36
}

declare dso_local %struct.mux_control** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.mux_control* @ERR_PTR(i32) #1

declare dso_local %struct.mux_control* @mux_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mux_control*) #1

declare dso_local i32 @devres_free(%struct.mux_control**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.mux_control**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
