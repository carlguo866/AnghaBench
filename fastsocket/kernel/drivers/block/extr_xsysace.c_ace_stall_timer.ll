; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_stall_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_stall_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"kicking stalled fsm; state=%i task=%i iter=%i dc=%i\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ace_stall_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_stall_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ace_device*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.ace_device*
  store %struct.ace_device* %7, %struct.ace_device** %3, align 8
  %8 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %9 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %12 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %15 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %18 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %21 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %25 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %29 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %28, i32 0, i32 2
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @mod_timer(i32* %29, i64 %32)
  %34 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %35 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %41, %1
  %37 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %38 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %43 = call i32 @ace_fsm_dostate(%struct.ace_device* %42)
  br label %36

44:                                               ; preds = %36
  %45 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %46 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %45, i32 0, i32 1
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ace_fsm_dostate(%struct.ace_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
