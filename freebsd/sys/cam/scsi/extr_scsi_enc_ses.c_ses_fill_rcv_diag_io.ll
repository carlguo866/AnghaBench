; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_fill_rcv_diag_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_ses.c_ses_fill_rcv_diag_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.enc_fsm_state = type { i32, i32, i32 }
%union.ccb = type { i32 }

@ENC_SEMB_SES = common dso_local global i64 0, align 8
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.enc_fsm_state*, %union.ccb*, i32*)* @ses_fill_rcv_diag_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ses_fill_rcv_diag_io(%struct.TYPE_3__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.enc_fsm_state*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %6, align 8
  store %union.ccb* %2, %union.ccb** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENC_SEMB_SES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %union.ccb*, %union.ccb** %7, align 8
  %16 = bitcast %union.ccb* %15 to i32*
  %17 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %18 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %19 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %23 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %26 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @semb_receive_diagnostic_results(i32* %16, i32 5, i32* null, i32 %17, i32 1, i32 %20, i32* %21, i32 %24, i32 %27)
  br label %45

29:                                               ; preds = %4
  %30 = load %union.ccb*, %union.ccb** %7, align 8
  %31 = bitcast %union.ccb* %30 to i32*
  %32 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %33 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %34 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %38 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SSD_FULL_SIZE, align 4
  %41 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %6, align 8
  %42 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @scsi_receive_diagnostic_results(i32* %31, i32 5, i32* null, i32 %32, i32 1, i32 %35, i32* %36, i32 %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %29, %14
  ret i32 0
}

declare dso_local i32 @semb_receive_diagnostic_results(i32*, i32, i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @scsi_receive_diagnostic_results(i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
