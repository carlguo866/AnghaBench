; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_edid_delay_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_edid_delay_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@edid_delay_timer = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.tda998x_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tda998x_edid_delay_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_edid_delay_done(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tda998x_priv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %5 = ptrtoint %struct.tda998x_priv* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @edid_delay_timer, align 4
  %8 = call %struct.tda998x_priv* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.tda998x_priv* %8, %struct.tda998x_priv** %3, align 8
  %9 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %11, i32 0, i32 2
  %13 = call i32 @wake_up(i32* %12)
  %14 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %14, i32 0, i32 1
  %16 = call i32 @schedule_work(i32* %15)
  ret void
}

declare dso_local %struct.tda998x_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
