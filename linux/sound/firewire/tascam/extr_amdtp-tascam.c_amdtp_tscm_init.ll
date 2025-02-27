; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_amdtp-tascam.c_amdtp_tscm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_amdtp-tascam.c_amdtp_tscm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { %struct.amdtp_tscm*, %struct.TYPE_4__ }
%struct.amdtp_tscm = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fw_unit = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_FMT_TSCM_TX = common dso_local global i32 0, align 4
@process_ir_ctx_payloads = common dso_local global i32 0, align 4
@AMDTP_FMT_TSCM_RX = common dso_local global i32 0, align 4
@process_it_ctx_payloads = common dso_local global i32 0, align 4
@CIP_NONBLOCKING = common dso_local global i32 0, align 4
@CIP_SKIP_DBC_ZERO_CHECK = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_tscm_init(%struct.amdtp_stream* %0, %struct.fw_unit* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca %struct.fw_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdtp_tscm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %6, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @AMDTP_FMT_TSCM_TX, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @process_ir_ctx_payloads, align 4
  store i32 %19, i32* %10, align 4
  br label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @AMDTP_FMT_TSCM_RX, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @process_it_ctx_payloads, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %25 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CIP_NONBLOCKING, align 4
  %28 = load i32, i32* @CIP_SKIP_DBC_ZERO_CHECK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @amdtp_stream_init(%struct.amdtp_stream* %24, %struct.fw_unit* %25, i32 %26, i32 %29, i32 %30, i32 %31, i32 4)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %56

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %42 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %46 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %36
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %51 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %50, i32 0, i32 0
  %52 = load %struct.amdtp_tscm*, %struct.amdtp_tscm** %51, align 8
  store %struct.amdtp_tscm* %52, %struct.amdtp_tscm** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.amdtp_tscm*, %struct.amdtp_tscm** %11, align 8
  %55 = getelementptr inbounds %struct.amdtp_tscm, %struct.amdtp_tscm* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %49, %35
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @amdtp_stream_init(%struct.amdtp_stream*, %struct.fw_unit*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
