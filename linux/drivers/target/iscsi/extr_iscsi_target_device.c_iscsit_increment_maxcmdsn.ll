; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_device.c_iscsit_increment_maxcmdsn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_device.c_iscsit_increment_maxcmdsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64 }
%struct.iscsi_session = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Updated MaxCmdSN to 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_increment_maxcmdsn(%struct.iscsi_cmd* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca %struct.iscsi_cmd*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %3, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %4, align 8
  %6 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %24

16:                                               ; preds = %10
  %17 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %19, i32 0, i32 0
  %21 = call i32 @atomic_inc_return(i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
