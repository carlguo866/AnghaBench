; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_goldfish_events.c_events_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_goldfish_events.c_events_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_dev = type { i32, i64 }

@REG_READ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @events_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @events_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.event_dev*
  store %struct.event_dev* %10, %struct.event_dev** %5, align 8
  %11 = load %struct.event_dev*, %struct.event_dev** %5, align 8
  %12 = getelementptr inbounds %struct.event_dev, %struct.event_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_READ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @__raw_readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.event_dev*, %struct.event_dev** %5, align 8
  %18 = getelementptr inbounds %struct.event_dev, %struct.event_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_READ, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_readl(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.event_dev*, %struct.event_dev** %5, align 8
  %24 = getelementptr inbounds %struct.event_dev, %struct.event_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_READ, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @__raw_readl(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.event_dev*, %struct.event_dev** %5, align 8
  %30 = getelementptr inbounds %struct.event_dev, %struct.event_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @input_event(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.event_dev*, %struct.event_dev** %5, align 8
  %37 = getelementptr inbounds %struct.event_dev, %struct.event_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @input_sync(i32 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
