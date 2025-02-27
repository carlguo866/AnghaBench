; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_removeconnforrecovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_logout_removeconnforrecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, i32 }
%struct.iscsi_conn = type { i64, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"Received explicit REMOVECONNFORRECOVERY logout for CID: %hu on CID: %hu.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Received Logout Request REMOVECONNFORRECOVERY while ERL!=2.\0A\00", align 1
@ISCSI_LOGOUT_RECOVERY_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [96 x i8] c"Received Logout Request REMOVECONNFORRECOVERY with CID: %hu on CID: %hu, implementation error.\0A\00", align 1
@ISCSI_LOGOUT_CLEANUP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_logout_removeconnforrecovery(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 1
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  store %struct.iscsi_session* %9, %struct.iscsi_session** %6, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15)
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ISCSI_LOGOUT_RECOVERY_UNSUPPORTED, align 4
  %26 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %30 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %28, %struct.iscsi_conn* %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %66

34:                                               ; preds = %2
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i64 %45, i64 %48)
  %50 = load i32, i32* @ISCSI_LOGOUT_CLEANUP_FAILED, align 4
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %53, %struct.iscsi_conn* %54, i32 %57)
  store i32 0, i32* %3, align 4
  br label %66

59:                                               ; preds = %34
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %60, %struct.iscsi_conn* %61, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %59, %42, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
