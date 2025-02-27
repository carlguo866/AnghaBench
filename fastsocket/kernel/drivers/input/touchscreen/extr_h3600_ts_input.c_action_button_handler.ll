; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_action_button_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_action_button_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@GPLR = common dso_local global i32 0, align 4
@GPIO_BITSY_ACTION_BUTTON = common dso_local global i32 0, align 4
@KEY_ENTER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @action_button_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_button_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @GPLR, align 4
  %8 = load i32, i32* @GPIO_BITSY_ACTION_BUTTON, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.input_dev*
  store %struct.input_dev* %14, %struct.input_dev** %6, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %16 = load i32, i32* @KEY_ENTER, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @input_report_key(%struct.input_dev* %15, i32 %16, i32 %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %20 = call i32 @input_sync(%struct.input_dev* %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %21
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
