; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_nsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_core.c_rfcomm_send_nsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_session = type { i32 }
%struct.rfcomm_hdr = type { i8*, i32, i32 }
%struct.rfcomm_mcc = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"%p cr %d type %d\00", align 1
@RFCOMM_UIH = common dso_local global i32 0, align 4
@RFCOMM_NSC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_session*, i32, i8*)* @rfcomm_send_nsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_send_nsc(%struct.rfcomm_session* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rfcomm_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rfcomm_hdr*, align 8
  %8 = alloca %struct.rfcomm_mcc*, align 8
  %9 = alloca [16 x i8*], align 16
  %10 = alloca i8**, align 8
  store %struct.rfcomm_session* %0, %struct.rfcomm_session** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  store i8** %11, i8*** %10, align 8
  %12 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_session* %12, i32 %13, i8* %14)
  %16 = load i8**, i8*** %10, align 8
  %17 = bitcast i8** %16 to i8*
  %18 = bitcast i8* %17 to %struct.rfcomm_hdr*
  store %struct.rfcomm_hdr* %18, %struct.rfcomm_hdr** %7, align 8
  %19 = load i8**, i8*** %10, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 16
  store i8** %20, i8*** %10, align 8
  %21 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %22 = getelementptr inbounds %struct.rfcomm_session, %struct.rfcomm_session* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__addr(i32 %23, i32 0)
  %25 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @RFCOMM_UIH, align 4
  %28 = call i32 @__ctrl(i32 %27, i32 0)
  %29 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %30 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = call i8* @__len8(i32 17)
  %32 = load %struct.rfcomm_hdr*, %struct.rfcomm_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.rfcomm_hdr, %struct.rfcomm_hdr* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = bitcast i8** %34 to i8*
  %36 = bitcast i8* %35 to %struct.rfcomm_mcc*
  store %struct.rfcomm_mcc* %36, %struct.rfcomm_mcc** %8, align 8
  %37 = load i8**, i8*** %10, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 16
  store i8** %38, i8*** %10, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** @RFCOMM_NSC, align 8
  %41 = call i8* @__mcc_type(i32 %39, i8* %40)
  %42 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %8, align 8
  %43 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = call i8* @__len8(i32 1)
  %45 = load %struct.rfcomm_mcc*, %struct.rfcomm_mcc** %8, align 8
  %46 = getelementptr inbounds %struct.rfcomm_mcc, %struct.rfcomm_mcc* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @__mcc_type(i32 %47, i8* %48)
  %50 = load i8**, i8*** %10, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %10, align 8
  %53 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %54 = call i8* @__fcs(i8** %53)
  %55 = load i8**, i8*** %10, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8**, i8*** %10, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %10, align 8
  %58 = load %struct.rfcomm_session*, %struct.rfcomm_session** %4, align 8
  %59 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %60 = load i8**, i8*** %10, align 8
  %61 = getelementptr inbounds [16 x i8*], [16 x i8*]* %9, i64 0, i64 0
  %62 = ptrtoint i8** %60 to i64
  %63 = ptrtoint i8** %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @rfcomm_send_frame(%struct.rfcomm_session* %58, i8** %59, i32 %66)
  ret i32 %67
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_session*, i32, i8*) #1

declare dso_local i32 @__addr(i32, i32) #1

declare dso_local i32 @__ctrl(i32, i32) #1

declare dso_local i8* @__len8(i32) #1

declare dso_local i8* @__mcc_type(i32, i8*) #1

declare dso_local i8* @__fcs(i8**) #1

declare dso_local i32 @rfcomm_send_frame(%struct.rfcomm_session*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
