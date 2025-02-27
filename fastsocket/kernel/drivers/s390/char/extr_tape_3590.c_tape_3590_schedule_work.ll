; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_schedule_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_schedule_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.work_handler_data = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tape_3590_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, i32)* @tape_3590_schedule_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_schedule_work(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.work_handler_data*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.work_handler_data* @kzalloc(i32 12, i32 %7)
  store %struct.work_handler_data* %8, %struct.work_handler_data** %6, align 8
  %9 = icmp eq %struct.work_handler_data* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.work_handler_data*, %struct.work_handler_data** %6, align 8
  %15 = getelementptr inbounds %struct.work_handler_data, %struct.work_handler_data* %14, i32 0, i32 1
  %16 = load i32, i32* @tape_3590_work_handler, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %19 = call i32 @tape_get_device_reference(%struct.tape_device* %18)
  %20 = load %struct.work_handler_data*, %struct.work_handler_data** %6, align 8
  %21 = getelementptr inbounds %struct.work_handler_data, %struct.work_handler_data* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.work_handler_data*, %struct.work_handler_data** %6, align 8
  %24 = getelementptr inbounds %struct.work_handler_data, %struct.work_handler_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.work_handler_data*, %struct.work_handler_data** %6, align 8
  %26 = getelementptr inbounds %struct.work_handler_data, %struct.work_handler_data* %25, i32 0, i32 1
  %27 = call i32 @schedule_work(i32* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.work_handler_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tape_get_device_reference(%struct.tape_device*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
