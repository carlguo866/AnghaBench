; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_get_rsp_sgaddr_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_fcxp_get_rsp_sgaddr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_fcxp = type { %struct.bfa_sge_s* }
%struct.bfa_sge_s = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfad_fcxp_get_rsp_sgaddr_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_fcxp*, align 8
  %6 = alloca %struct.bfa_sge_s*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfad_fcxp*
  store %struct.bfad_fcxp* %9, %struct.bfad_fcxp** %5, align 8
  %10 = load %struct.bfad_fcxp*, %struct.bfad_fcxp** %5, align 8
  %11 = getelementptr inbounds %struct.bfad_fcxp, %struct.bfad_fcxp* %10, i32 0, i32 0
  %12 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %12, i64 %14
  store %struct.bfa_sge_s* %15, %struct.bfa_sge_s** %6, align 8
  %16 = load %struct.bfa_sge_s*, %struct.bfa_sge_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_sge_s, %struct.bfa_sge_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
