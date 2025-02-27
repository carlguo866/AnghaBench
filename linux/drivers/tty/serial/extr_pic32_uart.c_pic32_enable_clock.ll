; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_enable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_sport = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pic32_sport*)* @pic32_enable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_enable_clock(%struct.pic32_sport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pic32_sport*, align 8
  %4 = alloca i32, align 4
  store %struct.pic32_sport* %0, %struct.pic32_sport** %3, align 8
  %5 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %6 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.pic32_sport*, %struct.pic32_sport** %3, align 8
  %15 = getelementptr inbounds %struct.pic32_sport, %struct.pic32_sport* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
