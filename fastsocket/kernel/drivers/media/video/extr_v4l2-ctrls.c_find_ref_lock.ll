; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_find_ref_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_find_ref_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ref = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl_ref* (%struct.v4l2_ctrl_handler*, i32)* @find_ref_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl_ref* @find_ref_lock(%struct.v4l2_ctrl_handler* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ctrl_handler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl_ref*, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.v4l2_ctrl_ref* null, %struct.v4l2_ctrl_ref** %5, align 8
  %6 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %7 = icmp ne %struct.v4l2_ctrl_handler* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.v4l2_ctrl_ref* @find_ref(%struct.v4l2_ctrl_handler* %12, i32 %13)
  store %struct.v4l2_ctrl_ref* %14, %struct.v4l2_ctrl_ref** %5, align 8
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  br label %18

18:                                               ; preds = %8, %2
  %19 = load %struct.v4l2_ctrl_ref*, %struct.v4l2_ctrl_ref** %5, align 8
  ret %struct.v4l2_ctrl_ref* %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_ctrl_ref* @find_ref(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
