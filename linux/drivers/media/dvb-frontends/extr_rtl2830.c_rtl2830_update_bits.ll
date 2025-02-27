; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_update_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2830.c_rtl2830_update_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rtl2830_dev = type { i32 }

@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @rtl2830_update_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2830_update_bits(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl2830_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = call %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.rtl2830_dev* %12, %struct.rtl2830_dev** %9, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %17 = call i32 @i2c_lock_bus(i32 %15, i32 %16)
  %18 = load %struct.rtl2830_dev*, %struct.rtl2830_dev** %9, align 8
  %19 = getelementptr inbounds %struct.rtl2830_dev, %struct.rtl2830_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %29 = call i32 @i2c_unlock_bus(i32 %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local %struct.rtl2830_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_lock_bus(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @i2c_unlock_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
