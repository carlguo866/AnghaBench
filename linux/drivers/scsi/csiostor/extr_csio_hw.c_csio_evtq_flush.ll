; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_evtq_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_evtq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32 }

@CSIO_HWF_FWEVT_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_evtq_flush(%struct.csio_hw* %0) #0 {
  %2 = alloca %struct.csio_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %2, align 8
  store i32 30, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %6 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %12, 0
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i1 [ false, %4 ], [ %14, %11 ]
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %19 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock_irq(i32* %19)
  %21 = call i32 @msleep(i32 2000)
  %22 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_irq(i32* %23)
  br label %4

25:                                               ; preds = %15
  %26 = load %struct.csio_hw*, %struct.csio_hw** %2, align 8
  %27 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @CSIO_DB_ASSERT(i32 %33)
  ret void
}

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @CSIO_DB_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
