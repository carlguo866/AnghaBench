; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zl10353_state* }
%struct.zl10353_state = type { i32 }

@RS_ERR_CNT_2 = common dso_local global i32 0, align 4
@RS_ERR_CNT_1 = common dso_local global i32 0, align 4
@RS_ERR_CNT_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @zl10353_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.zl10353_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.zl10353_state*, %struct.zl10353_state** %7, align 8
  store %struct.zl10353_state* %8, %struct.zl10353_state** %5, align 8
  %9 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %10 = load i32, i32* @RS_ERR_CNT_2, align 4
  %11 = call i32 @zl10353_read_register(%struct.zl10353_state* %9, i32 %10)
  %12 = shl i32 %11, 16
  %13 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %14 = load i32, i32* @RS_ERR_CNT_1, align 4
  %15 = call i32 @zl10353_read_register(%struct.zl10353_state* %13, i32 %14)
  %16 = shl i32 %15, 8
  %17 = or i32 %12, %16
  %18 = load %struct.zl10353_state*, %struct.zl10353_state** %5, align 8
  %19 = load i32, i32* @RS_ERR_CNT_0, align 4
  %20 = call i32 @zl10353_read_register(%struct.zl10353_state* %18, i32 %19)
  %21 = or i32 %17, %20
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  ret i32 0
}

declare dso_local i32 @zl10353_read_register(%struct.zl10353_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
