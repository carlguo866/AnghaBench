; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_put_login_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsit_put_login_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_login = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_put_login_tx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_login*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %10 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @iscsi_login_tx_data(%struct.iscsi_conn* %8, i32 %11, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i64 @iscsi_login_tx_data(%struct.iscsi_conn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
