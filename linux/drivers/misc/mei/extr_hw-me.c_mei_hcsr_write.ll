; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_hcsr_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_hcsr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"H_CSR\00", align 1
@H_CSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*, i32)* @mei_hcsr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_hcsr_write(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %6 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @H_CSR, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trace_mei_reg_write(i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = call i32 @to_me_hw(%struct.mei_device* %11)
  %13 = load i32, i32* @H_CSR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mei_me_reg_write(i32 %12, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @trace_mei_reg_write(i32, i8*, i32, i32) #1

declare dso_local i32 @mei_me_reg_write(i32, i32, i32) #1

declare dso_local i32 @to_me_hw(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
