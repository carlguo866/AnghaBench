; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_command_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_ngene_command_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.ngene_command = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_SET_GPIO_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngene_command_gpio_set(%struct.ngene* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ngene*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ngene_command, align 8
  store %struct.ngene* %0, %struct.ngene** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @CMD_SET_GPIO_PIN, align 4
  %9 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %7, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 7
  %18 = or i32 %15, %17
  %19 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %7, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %7, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ngene*, %struct.ngene** %4, align 8
  %25 = call i32 @ngene_command(%struct.ngene* %24, %struct.ngene_command* %7)
  ret i32 %25
}

declare dso_local i32 @ngene_command(%struct.ngene*, %struct.ngene_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
