; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_conn_usage_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_check_conn_usage_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_check_conn_usage_count(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %3 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %3, i32 0, i32 2
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  store i32 1, i32* %12, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 2
  %15 = call i32 @spin_unlock_bh(i32* %14)
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 3
  %18 = call i32 @wait_for_completion(i32* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock_bh(i32* %21)
  br label %23

23:                                               ; preds = %19, %10
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
