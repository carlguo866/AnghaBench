; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_next_complete_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_next_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_request = type { i32 }
%struct.file_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pending_request* (%struct.file_info*)* @next_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pending_request* @next_complete_req(%struct.file_info* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pending_request*, align 8
  store %struct.file_info* %0, %struct.file_info** %2, align 8
  %5 = load %struct.file_info*, %struct.file_info** %2, align 8
  %6 = getelementptr inbounds %struct.file_info, %struct.file_info* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.file_info*, %struct.file_info** %2, align 8
  %10 = call %struct.pending_request* @__next_complete_req(%struct.file_info* %9)
  store %struct.pending_request* %10, %struct.pending_request** %4, align 8
  %11 = load %struct.file_info*, %struct.file_info** %2, align 8
  %12 = getelementptr inbounds %struct.file_info, %struct.file_info* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i64 %13)
  %15 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  ret %struct.pending_request* %15
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pending_request* @__next_complete_req(%struct.file_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
