; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_pwm_agc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_pwm_agc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dib8000_state* }
%struct.TYPE_2__ = type { i32 }
%struct.dib8000_state = type { i32 }

@DIBX000_ADC_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dib8000_pwm_agc_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  store %struct.dib8000_state* %6, %struct.dib8000_state** %3, align 8
  %7 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %8 = load i32, i32* @DIBX000_ADC_ON, align 4
  %9 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %7, i32 %8)
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 1000
  %16 = call i64 @BAND_OF_FREQUENCY(i32 %15)
  %17 = trunc i64 %16 to i8
  %18 = call i32 @dib8000_set_agc_config(%struct.dib8000_state* %10, i8 zeroext %17)
  ret void
}

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_agc_config(%struct.dib8000_state*, i8 zeroext) #1

declare dso_local i64 @BAND_OF_FREQUENCY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
