; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ds3000.c_ds3000_set_carrier_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ds3000.c_ds3000_set_carrier_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ds3000_state* }
%struct.ds3000_state = type { i32 }

@DS3000_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @ds3000_set_carrier_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds3000_set_carrier_offset(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds3000_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.ds3000_state*, %struct.ds3000_state** %8, align 8
  store %struct.ds3000_state* %9, %struct.ds3000_state** %5, align 8
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %11, 65536
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 2, %13
  %15 = load i32, i32* @DS3000_SAMPLE_RATE, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @DS3000_SAMPLE_RATE, align 4
  %18 = mul nsw i32 2, %17
  %19 = sdiv i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 65536
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.ds3000_state*, %struct.ds3000_state** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @ds3000_writereg(%struct.ds3000_state* %26, i32 95, i32 %28)
  %30 = load %struct.ds3000_state*, %struct.ds3000_state** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @ds3000_writereg(%struct.ds3000_state* %30, i32 94, i32 %32)
  ret i32 0
}

declare dso_local i32 @ds3000_writereg(%struct.ds3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
