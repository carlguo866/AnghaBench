; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_get_red_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_pb0100.c_pb0100_get_red_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@RED_BALANCE_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32*)* @pb0100_get_red_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb0100_get_red_balance(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* @RED_BALANCE_IDX, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
