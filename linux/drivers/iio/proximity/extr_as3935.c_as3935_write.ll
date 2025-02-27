; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_as3935.c_as3935_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3935_state = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3935_state*, i32, i32)* @as3935_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3935_write(%struct.as3935_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.as3935_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.as3935_state* %0, %struct.as3935_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.as3935_state*, %struct.as3935_state** %4, align 8
  %9 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @AS3935_ADDRESS(i32 %11)
  %13 = ashr i32 %12, 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.as3935_state*, %struct.as3935_state** %4, align 8
  %20 = getelementptr inbounds %struct.as3935_state, %struct.as3935_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @spi_write(i32 %21, i32* %22, i32 2)
  ret i32 %23
}

declare dso_local i32 @AS3935_ADDRESS(i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
