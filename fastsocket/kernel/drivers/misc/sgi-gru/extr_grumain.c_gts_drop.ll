; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gts_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gts_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i64, i32 }

@gts_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gts_drop(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  %3 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %4 = icmp ne %struct.gru_thread_state* %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %7 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %6, i32 0, i32 1
  %8 = call i64 @atomic_dec_return(i32* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %12 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %17 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @gru_drop_mmu_notifier(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %22 = call i32 @kfree(%struct.gru_thread_state* %21)
  %23 = load i32, i32* @gts_free, align 4
  %24 = call i32 @STAT(i32 %23)
  br label %25

25:                                               ; preds = %20, %5, %1
  ret void
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @gru_drop_mmu_notifier(i64) #1

declare dso_local i32 @kfree(%struct.gru_thread_state*) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
