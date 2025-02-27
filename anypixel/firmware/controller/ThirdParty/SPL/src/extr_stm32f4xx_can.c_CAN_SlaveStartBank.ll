; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_SlaveStartBank.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_SlaveStartBank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FMR_FINIT = common dso_local global i32 0, align 4
@CAN1 = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAN_SlaveStartBank(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @IS_CAN_BANKNUMBER(i64 %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i32, i32* @FMR_FINIT, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CAN1, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CAN1, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -16143
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %2, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CAN1, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @FMR_FINIT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CAN1, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_BANKNUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
