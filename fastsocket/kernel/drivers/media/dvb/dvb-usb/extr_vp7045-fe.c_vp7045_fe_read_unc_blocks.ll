; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_read_unc_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045-fe.c_vp7045_fe_read_unc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.vp7045_fe_state* }
%struct.vp7045_fe_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @vp7045_fe_read_unc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp7045_fe_read_unc_blocks(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vp7045_fe_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %7, align 8
  store %struct.vp7045_fe_state* %8, %struct.vp7045_fe_state** %5, align 8
  %9 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %10 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vp7045_read_reg(i32 %11, i32 16)
  %13 = shl i32 %12, 8
  %14 = load %struct.vp7045_fe_state*, %struct.vp7045_fe_state** %5, align 8
  %15 = getelementptr inbounds %struct.vp7045_fe_state, %struct.vp7045_fe_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vp7045_read_reg(i32 %16, i32 17)
  %18 = or i32 %13, %17
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  ret i32 0
}

declare dso_local i32 @vp7045_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
