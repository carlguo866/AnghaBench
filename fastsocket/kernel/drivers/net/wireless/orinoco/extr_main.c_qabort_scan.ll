; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_qabort_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_qabort_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, i32, i32 }
%struct.orinoco_scan_data = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orinoco_private*)* @qabort_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qabort_scan(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.orinoco_scan_data*, align 8
  %4 = alloca i64, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.orinoco_scan_data* @kmalloc(i32 8, i32 %5)
  store %struct.orinoco_scan_data* %6, %struct.orinoco_scan_data** %3, align 8
  %7 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %3, align 8
  %8 = icmp ne %struct.orinoco_scan_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %3, align 8
  %12 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %14 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.orinoco_scan_data*, %struct.orinoco_scan_data** %3, align 8
  %18 = getelementptr inbounds %struct.orinoco_scan_data, %struct.orinoco_scan_data* %17, i32 0, i32 1
  %19 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %20 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %19, i32 0, i32 2
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  %22 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %23 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %22, i32 0, i32 1
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %27 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.orinoco_scan_data* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
