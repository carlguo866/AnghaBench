; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @dib3000mc_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_read_signal_strength(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %8, align 8
  store %struct.dib3000mc_state* %9, %struct.dib3000mc_state** %5, align 8
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %11 = call i64 @dib3000mc_read_word(%struct.dib3000mc_state* %10, i32 392)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = sub nsw i64 65535, %12
  %14 = load i64*, i64** %4, align 8
  store i64 %13, i64* %14, align 8
  ret i32 0
}

declare dso_local i64 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
