; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_wait_until_quiesced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_wait_until_quiesced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*)* @pqi_ctrl_wait_until_quiesced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ctrl_wait_until_quiesced(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca %struct.pqi_ctrl_info*, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %5 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %4, i32 0, i32 1
  %6 = call i64 @atomic_read(i32* %5)
  %7 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %2, align 8
  %8 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %7, i32 0, i32 0
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %3

13:                                               ; preds = %3
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
