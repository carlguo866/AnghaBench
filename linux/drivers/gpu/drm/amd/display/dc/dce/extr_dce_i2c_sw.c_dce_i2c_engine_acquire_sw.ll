; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_engine_acquire_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_engine_acquire_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_sw = type { i32 }
%struct.ddc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_i2c_engine_acquire_sw(%struct.dce_i2c_sw* %0, %struct.ddc* %1) #0 {
  %3 = alloca %struct.dce_i2c_sw*, align 8
  %4 = alloca %struct.ddc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce_i2c_sw* %0, %struct.dce_i2c_sw** %3, align 8
  store %struct.ddc* %1, %struct.ddc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  %9 = load %struct.ddc*, %struct.ddc** %4, align 8
  %10 = call i32 @dce_i2c_sw_engine_acquire_engine(%struct.dce_i2c_sw* %8, %struct.ddc* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %21

14:                                               ; preds = %7
  %15 = call i32 @udelay(i32 10)
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %7, label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @dce_i2c_sw_engine_acquire_engine(%struct.dce_i2c_sw*, %struct.ddc*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
