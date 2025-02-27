; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_trace_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_trace_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.etmv4_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @etm4_trace_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etm4_trace_id(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  %4 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %5 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.etmv4_drvdata* @dev_get_drvdata(i32 %7)
  store %struct.etmv4_drvdata* %8, %struct.etmv4_drvdata** %3, align 8
  %9 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  ret i32 %11
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
