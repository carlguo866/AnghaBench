; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_pctv_290e_set_lna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_pctv_290e_set_lna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__*, %struct.dtv_frontend_properties }
%struct.TYPE_3__ = type { %struct.em28xx_i2c_bus* }
%struct.em28xx_i2c_bus = type { %struct.em28xx* }
%struct.em28xx = type { %struct.TYPE_4__*, %struct.em28xx_dvb* }
%struct.TYPE_4__ = type { i32 }
%struct.em28xx_dvb = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: LNA control is disabled (lna=%u)\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i64 0, align 8
@GPIOF_OUT_INIT_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @em28xx_pctv_290e_set_lna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_pctv_290e_set_lna(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.em28xx_i2c_bus*, align 8
  %5 = alloca %struct.em28xx*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  store %struct.dtv_frontend_properties* %7, %struct.dtv_frontend_properties** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %11, align 8
  store %struct.em28xx_i2c_bus* %12, %struct.em28xx_i2c_bus** %4, align 8
  %13 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %4, align 8
  %14 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %13, i32 0, i32 0
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %5, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* @KBUILD_MODNAME, align 4
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  ret i32 0
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
