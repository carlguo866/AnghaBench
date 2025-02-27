; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_read_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_smbus_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32 }

@REG_TWSIC1 = common dso_local global i32 0, align 4
@TWSIC1_RVALID = common dso_local global i32 0, align 4
@TWSIC1_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @cafe_smbus_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_read_done(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %5 = call i32 @udelay(i32 20)
  %6 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %7 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %11 = load i32, i32* @REG_TWSIC1, align 4
  %12 = call i32 @mcam_reg_read(%struct.mcam_camera* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %14 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TWSIC1_RVALID, align 4
  %19 = load i32, i32* @TWSIC1_ERROR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  ret i32 %21
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mcam_reg_read(%struct.mcam_camera*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
