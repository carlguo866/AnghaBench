; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sun4i-ts.c_sun4i_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sun4i_ts_data = type { i64 }

@TP_INT_FIFOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @sun4i_ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ts_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.sun4i_ts_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.sun4i_ts_data* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.sun4i_ts_data* %5, %struct.sun4i_ts_data** %3, align 8
  %6 = call i32 @TEMP_IRQ_EN(i32 1)
  %7 = call i32 @DATA_IRQ_EN(i32 1)
  %8 = or i32 %6, %7
  %9 = call i32 @FIFO_TRIG(i32 1)
  %10 = or i32 %8, %9
  %11 = call i32 @FIFO_FLUSH(i32 1)
  %12 = or i32 %10, %11
  %13 = call i32 @TP_UP_IRQ_EN(i32 1)
  %14 = or i32 %12, %13
  %15 = load %struct.sun4i_ts_data*, %struct.sun4i_ts_data** %3, align 8
  %16 = getelementptr inbounds %struct.sun4i_ts_data, %struct.sun4i_ts_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TP_INT_FIFOC, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  ret i32 0
}

declare dso_local %struct.sun4i_ts_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @TEMP_IRQ_EN(i32) #1

declare dso_local i32 @DATA_IRQ_EN(i32) #1

declare dso_local i32 @FIFO_TRIG(i32) #1

declare dso_local i32 @FIFO_FLUSH(i32) #1

declare dso_local i32 @TP_UP_IRQ_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
