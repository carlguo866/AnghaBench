; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_get_tuner_i2c_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s5h1420.c_s5h1420_get_tuner_i2c_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.dvb_frontend = type { %struct.s5h1420_state* }
%struct.s5h1420_state = type { %struct.i2c_adapter }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @s5h1420_get_tuner_i2c_adapter(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %5, align 8
  store %struct.s5h1420_state* %6, %struct.s5h1420_state** %3, align 8
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %3, align 8
  %8 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %7, i32 0, i32 0
  ret %struct.i2c_adapter* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
