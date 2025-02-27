; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda10021_state* }
%struct.tda10021_state = type { i32 }

@tda10021_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda10021_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tda10021_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.tda10021_state*, %struct.tda10021_state** %8, align 8
  store %struct.tda10021_state* %9, %struct.tda10021_state** %5, align 8
  %10 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %11 = call i32 @tda10021_readreg(%struct.tda10021_state* %10, i32 20)
  %12 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %13 = call i32 @tda10021_readreg(%struct.tda10021_state* %12, i32 21)
  %14 = shl i32 %13, 8
  %15 = or i32 %11, %14
  %16 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %17 = call i32 @tda10021_readreg(%struct.tda10021_state* %16, i32 22)
  %18 = and i32 %17, 15
  %19 = shl i32 %18, 16
  %20 = or i32 %15, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %22 = load %struct.tda10021_state*, %struct.tda10021_state** %5, align 8
  %23 = call i32 @tda10021_readreg(%struct.tda10021_state* %22, i32 16)
  %24 = and i32 %23, -193
  %25 = load i32*, i32** @tda10021_inittab, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 16
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 192
  %29 = or i32 %24, %28
  %30 = call i32 @_tda10021_writereg(%struct.tda10021_state* %21, i32 16, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 10, %31
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  ret i32 0
}

declare dso_local i32 @tda10021_readreg(%struct.tda10021_state*, i32) #1

declare dso_local i32 @_tda10021_writereg(%struct.tda10021_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
