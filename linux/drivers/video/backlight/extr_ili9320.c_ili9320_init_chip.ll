; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ili9320.c_ili9320_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili9320 = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ili9320*, i32)* }

@.str = private unnamed_addr constant [30 x i8] c"failed to initialise display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili9320*)* @ili9320_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9320_init_chip(%struct.ili9320* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ili9320*, align 8
  %4 = alloca i32, align 4
  store %struct.ili9320* %0, %struct.ili9320** %3, align 8
  %5 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %6 = call i32 @ili9320_reset(%struct.ili9320* %5)
  %7 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %8 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ili9320*, i32)*, i32 (%struct.ili9320*, i32)** %10, align 8
  %12 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %13 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %14 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %11(%struct.ili9320* %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %21 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.ili9320*, %struct.ili9320** %3, align 8
  %27 = getelementptr inbounds %struct.ili9320, %struct.ili9320* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ili9320_reset(%struct.ili9320*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
