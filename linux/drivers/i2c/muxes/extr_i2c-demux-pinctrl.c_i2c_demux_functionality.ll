; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_functionality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_functionality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_4__*, %struct.i2c_demux_pinctrl_priv* }
%struct.TYPE_4__ = type { {}* }
%struct.i2c_demux_pinctrl_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2c_adapter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @i2c_demux_functionality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_functionality(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %5, i32 0, i32 1
  %7 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %6, align 8
  store %struct.i2c_demux_pinctrl_priv* %7, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %8 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %4, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.i2c_adapter*)**
  %22 = load i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)** %21, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = call i32 %22(%struct.i2c_adapter* %23)
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
