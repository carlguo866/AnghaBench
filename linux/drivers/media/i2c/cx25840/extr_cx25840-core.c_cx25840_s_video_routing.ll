; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_video_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_s_video_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32, i64 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @cx25840_s_video_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_video_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cx25840_state*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.cx25840_state* %12, %struct.cx25840_state** %9, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %16 = call i64 @is_cx23888(%struct.cx25840_state* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call i32 @cx23888_std_setup(%struct.i2c_client* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %23 = call i64 @is_cx2584x(%struct.cx25840_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %27 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @cx25840_vconfig_add(%struct.cx25840_state* %34, i64 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %38 = call i32 @cx25840_vconfig_apply(%struct.i2c_client* %37)
  br label %39

39:                                               ; preds = %33, %30, %25, %21
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %43 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @set_input(%struct.i2c_client* %40, i64 %41, i32 %44)
  ret i32 %45
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

declare dso_local i32 @cx23888_std_setup(%struct.i2c_client*) #1

declare dso_local i64 @is_cx2584x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_vconfig_add(%struct.cx25840_state*, i64) #1

declare dso_local i32 @cx25840_vconfig_apply(%struct.i2c_client*) #1

declare dso_local i32 @set_input(%struct.i2c_client*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
