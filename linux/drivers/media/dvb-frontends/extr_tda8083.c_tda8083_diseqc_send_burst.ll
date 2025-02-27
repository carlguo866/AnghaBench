; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_diseqc_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_diseqc_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8083_state* }
%struct.tda8083_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda8083_diseqc_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8083_diseqc_send_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tda8083_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda8083_state*, %struct.tda8083_state** %7, align 8
  store %struct.tda8083_state* %8, %struct.tda8083_state** %5, align 8
  %9 = load %struct.tda8083_state*, %struct.tda8083_state** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @tda8083_send_diseqc_burst(%struct.tda8083_state* %9, i32 %10)
  %12 = load %struct.tda8083_state*, %struct.tda8083_state** %5, align 8
  %13 = call i32 @tda8083_writereg(%struct.tda8083_state* %12, i32 0, i32 60)
  %14 = load %struct.tda8083_state*, %struct.tda8083_state** %5, align 8
  %15 = call i32 @tda8083_writereg(%struct.tda8083_state* %14, i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @tda8083_send_diseqc_burst(%struct.tda8083_state*, i32) #1

declare dso_local i32 @tda8083_writereg(%struct.tda8083_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
