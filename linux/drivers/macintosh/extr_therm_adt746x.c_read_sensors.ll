; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_read_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_read_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermostat = type { i32* }

@TEMP_REG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thermostat*)* @read_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_sensors(%struct.thermostat* %0) #0 {
  %2 = alloca %struct.thermostat*, align 8
  %3 = alloca i32, align 4
  store %struct.thermostat* %0, %struct.thermostat** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %9 = load i32*, i32** @TEMP_REG, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @read_reg(%struct.thermostat* %8, i32 %13)
  %15 = load %struct.thermostat*, %struct.thermostat** %2, align 8
  %16 = getelementptr inbounds %struct.thermostat, %struct.thermostat* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %14, i32* %20, align 4
  br label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  ret void
}

declare dso_local i32 @read_reg(%struct.thermostat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
