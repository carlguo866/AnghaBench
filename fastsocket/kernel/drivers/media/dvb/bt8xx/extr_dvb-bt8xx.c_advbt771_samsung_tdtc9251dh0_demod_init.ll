; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_demod_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_advbt771_samsung_tdtc9251dh0_demod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config = internal global [3 x i32] [i32 137, i32 56, i32 45], align 4
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset = internal global [2 x i32] [i32 80, i32 128], align 4
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg = internal global [2 x i32] [i32 142, i32 64], align 4
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg = internal global [11 x i32] [i32 103, i32 16, i32 35, i32 0, i32 255, i32 255, i32 0, i32 255, i32 0, i32 64, i32 64], align 16
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra = internal global [2 x i32] [i32 181, i32 122], align 4
@advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg = internal global [2 x i32] [i32 117, i32 50], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @advbt771_samsung_tdtc9251dh0_demod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @advbt771_samsung_tdtc9251dh0_demod_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %4 = call i32 @mt352_write(%struct.dvb_frontend* %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_clock_config, i64 0, i64 0), i32 12)
  %5 = call i32 @udelay(i32 2000)
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = call i32 @mt352_write(%struct.dvb_frontend* %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_reset, i64 0, i64 0), i32 8)
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = call i32 @mt352_write(%struct.dvb_frontend* %8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, i64 0, i64 0), i32 8)
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = call i32 @mt352_write(%struct.dvb_frontend* %10, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, i64 0, i64 0), i32 44)
  %12 = call i32 @udelay(i32 2000)
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = call i32 @mt352_write(%struct.dvb_frontend* %13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_av771_extra, i64 0, i64 0), i32 8)
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = call i32 @mt352_write(%struct.dvb_frontend* %15, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @advbt771_samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, i64 0, i64 0), i32 8)
  ret i32 0
}

declare dso_local i32 @mt352_write(%struct.dvb_frontend*, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
