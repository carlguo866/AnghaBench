; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_warn_external_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_warn_external_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"AO command and AI external channel queue cannot be used simultaneously\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"Use internal AI channel queue (channels must be consecutive and use same range/aref)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @warn_external_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_external_queue(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_err(i32 %5, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
