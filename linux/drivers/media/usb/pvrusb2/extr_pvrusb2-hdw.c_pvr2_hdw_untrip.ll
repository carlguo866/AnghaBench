; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_untrip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_untrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_hdw_untrip(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @LOCK_TAKE(i32 %6)
  br label %8

8:                                                ; preds = %1
  %9 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %10 = call i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw* %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LOCK_GIVE(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %20 = call i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw* %19)
  br label %21

21:                                               ; preds = %18, %11
  ret i32 0
}

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

declare dso_local i32 @pvr2_hdw_state_sched(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
