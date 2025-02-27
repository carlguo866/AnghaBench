; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov772x.c_ov772x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32* }
%struct.ov772x_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov772x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ov772x_priv*, align 8
  %4 = alloca %struct.soc_camera_device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.ov772x_priv* @to_ov772x(%struct.i2c_client* %5)
  store %struct.ov772x_priv* %6, %struct.ov772x_priv** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.soc_camera_device*, %struct.soc_camera_device** %9, align 8
  store %struct.soc_camera_device* %10, %struct.soc_camera_device** %4, align 8
  %11 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %14 = call i32 @kfree(%struct.ov772x_priv* %13)
  ret i32 0
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.ov772x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
