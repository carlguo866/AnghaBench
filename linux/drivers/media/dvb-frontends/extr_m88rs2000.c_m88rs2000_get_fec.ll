; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_get_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88rs2000.c_m88rs2000_get_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m88rs2000_state = type { i32 }

@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m88rs2000_state*)* @m88rs2000_get_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88rs2000_get_fec(%struct.m88rs2000_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.m88rs2000_state*, align 8
  %4 = alloca i32, align 4
  store %struct.m88rs2000_state* %0, %struct.m88rs2000_state** %3, align 8
  %5 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %6 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %5, i32 154, i32 48)
  %7 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %8 = call i32 @m88rs2000_readreg(%struct.m88rs2000_state* %7, i32 118)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.m88rs2000_state*, %struct.m88rs2000_state** %3, align 8
  %10 = call i32 @m88rs2000_writereg(%struct.m88rs2000_state* %9, i32 154, i32 176)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 240
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 5
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %26 [
    i32 4, label %16
    i32 3, label %18
    i32 2, label %20
    i32 1, label %22
    i32 0, label %24
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @FEC_1_2, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @FEC_2_3, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @FEC_3_4, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @FEC_5_6, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @FEC_7_8, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @FEC_AUTO, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %24, %22, %20, %18, %16
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @m88rs2000_writereg(%struct.m88rs2000_state*, i32, i32) #1

declare dso_local i32 @m88rs2000_readreg(%struct.m88rs2000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
