; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tsc2007 = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"platform data is required!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tsc2007*)* @tsc2007_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc2007_probe_dt(%struct.i2c_client* %0, %struct.tsc2007* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tsc2007*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.tsc2007* %1, %struct.tsc2007** %4, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  %7 = call i32 @dev_err(i32* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  ret i32 %9
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
