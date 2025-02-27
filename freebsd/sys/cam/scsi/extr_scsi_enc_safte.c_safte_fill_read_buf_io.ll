; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_fill_read_buf_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_enc_safte.c_safte_fill_read_buf_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.enc_fsm_state = type { i64, i32, i32 }
%union.ccb = type { i32 }

@SAFTE_RD_RDCFG = common dso_local global i64 0, align 8
@SAFTE_UPDATE_READCONFIG = common dso_local global i32 0, align 4
@ENC_SEMB_SAFT = common dso_local global i64 0, align 8
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.enc_fsm_state*, %union.ccb*, i32*)* @safte_fill_read_buf_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safte_fill_read_buf_io(%struct.TYPE_6__* %0, %struct.enc_fsm_state* %1, %union.ccb* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.enc_fsm_state*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.enc_fsm_state* %1, %struct.enc_fsm_state** %7, align 8
  store %union.ccb* %2, %union.ccb** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %11 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SAFTE_RD_RDCFG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i32, i32* @SAFTE_UPDATE_READCONFIG, align 4
  %24 = call i32 @enc_update_request(%struct.TYPE_6__* %22, i32 %23)
  store i32 -1, i32* %5, align 4
  br label %63

25:                                               ; preds = %15, %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ENC_SEMB_SAFT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %union.ccb*, %union.ccb** %8, align 8
  %33 = bitcast %union.ccb* %32 to i32*
  %34 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %35 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %36 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %40 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %43 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @semb_read_buffer(i32* %33, i32 5, i32* null, i32 %34, i64 %37, i32* %38, i32 %41, i32 %44)
  br label %62

46:                                               ; preds = %25
  %47 = load %union.ccb*, %union.ccb** %8, align 8
  %48 = bitcast %union.ccb* %47 to i32*
  %49 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %50 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %51 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %55 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SSD_FULL_SIZE, align 4
  %58 = load %struct.enc_fsm_state*, %struct.enc_fsm_state** %7, align 8
  %59 = getelementptr inbounds %struct.enc_fsm_state, %struct.enc_fsm_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @scsi_read_buffer(i32* %48, i32 5, i32* null, i32 %49, i32 1, i64 %52, i32 0, i32* %53, i32 %56, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %46, %31
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @enc_update_request(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @semb_read_buffer(i32*, i32, i32*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @scsi_read_buffer(i32*, i32, i32*, i32, i32, i64, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
