; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_and_process_admin_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_comp_ctx = type { i32 }
%struct.ena_com_admin_queue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*)* @ena_com_wait_and_process_admin_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_wait_and_process_admin_cq(%struct.ena_comp_ctx* %0, %struct.ena_com_admin_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_comp_ctx*, align 8
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  store %struct.ena_comp_ctx* %0, %struct.ena_comp_ctx** %4, align 8
  store %struct.ena_com_admin_queue* %1, %struct.ena_com_admin_queue** %5, align 8
  %6 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %7 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %13 = call i32 @ena_com_wait_and_process_admin_cq_polling(%struct.ena_comp_ctx* %11, %struct.ena_com_admin_queue* %12)
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.ena_comp_ctx*, %struct.ena_comp_ctx** %4, align 8
  %16 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %17 = call i32 @ena_com_wait_and_process_admin_cq_interrupts(%struct.ena_comp_ctx* %15, %struct.ena_com_admin_queue* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @ena_com_wait_and_process_admin_cq_polling(%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*) #1

declare dso_local i32 @ena_com_wait_and_process_admin_cq_interrupts(%struct.ena_comp_ctx*, %struct.ena_com_admin_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
