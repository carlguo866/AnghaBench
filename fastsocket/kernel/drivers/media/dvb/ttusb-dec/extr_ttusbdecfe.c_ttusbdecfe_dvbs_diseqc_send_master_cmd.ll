; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_diseqc_send_master_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttusb-dec/extr_ttusbdecfe.c_ttusbdecfe_dvbs_diseqc_send_master_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.dvb_diseqc_master_cmd = type { i32, i32 }
%struct.ttusbdecfe_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @ttusbdecfe_dvbs_diseqc_send_master_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbdecfe_dvbs_diseqc_send_master_cmd(%struct.dvb_frontend* %0, %struct.dvb_diseqc_master_cmd* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %5 = alloca %struct.ttusbdecfe_state*, align 8
  %6 = alloca [10 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_diseqc_master_cmd* %1, %struct.dvb_diseqc_master_cmd** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ttusbdecfe_state*
  store %struct.ttusbdecfe_state* %10, %struct.ttusbdecfe_state** %5, align 8
  %11 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false)
  %12 = bitcast i8* %11 to <{ i32, i32, [8 x i32] }>*
  %13 = getelementptr inbounds <{ i32, i32, [8 x i32] }>, <{ i32, i32, [8 x i32] }>* %12, i32 0, i32 1
  store i32 255, i32* %13, align 4
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 4
  %15 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(i32* %14, i32 %17, i32 %20)
  %22 = load %struct.ttusbdecfe_state*, %struct.ttusbdecfe_state** %5, align 8
  %23 = getelementptr inbounds %struct.ttusbdecfe_state, %struct.ttusbdecfe_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)*, i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*, i32*)** %25, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %28 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 6, %30
  %32 = sext i32 %31 to i64
  %33 = sub i64 40, %32
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %36 = call i32 %26(%struct.dvb_frontend* %27, i32 114, i32 %34, i32* %35, i32* null, i32* null)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
