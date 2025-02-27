; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_port_info_rcv.c_pi_rcv_check_and_fix_lid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_port_info_rcv.c_pi_rcv_check_and_fix_lid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IB_LID_UCAST_END_HO = common dso_local global i64 0, align 8
@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"ERR 0F04: Got invalid base LID %u from the network. Corrected to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, %struct.TYPE_7__*)* @pi_rcv_check_and_fix_lid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pi_rcv_check_and_fix_lid(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @cl_ntoh16(i32 %9)
  %11 = load i64, i64* @IB_LID_UCAST_END_HO, align 8
  %12 = icmp sgt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @PF(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @OSM_LOG_ERROR, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @cl_ntoh16(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @cl_ntoh16(i32 %26)
  %28 = call i32 @OSM_LOG(i32* %17, i32 %18, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %16, %3
  ret void
}

declare dso_local i64 @PF(i32) #1

declare dso_local i64 @cl_ntoh16(i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
