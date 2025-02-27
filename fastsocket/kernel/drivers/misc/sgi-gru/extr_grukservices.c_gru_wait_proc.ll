; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_wait_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_wait_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_control_block_status = type { i32 }

@CBS_EXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_wait_proc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gru_control_block_status*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.gru_control_block_status*
  store %struct.gru_control_block_status* %6, %struct.gru_control_block_status** %3, align 8
  %7 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %3, align 8
  %8 = call i32 @gru_wait_idle_or_exception(%struct.gru_control_block_status* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CBS_EXCEPTION, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @gru_retry_exception(i8* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = call i32 (...) @rmb()
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @gru_wait_idle_or_exception(%struct.gru_control_block_status*) #1

declare dso_local i32 @gru_retry_exception(i8*) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
