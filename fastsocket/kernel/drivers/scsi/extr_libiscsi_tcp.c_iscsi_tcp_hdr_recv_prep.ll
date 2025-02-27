; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_recv_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_hdr_recv_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"digest enabled\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"digest disabled\00", align 1
@iscsi_tcp_hdr_recv_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %0) #0 {
  %2 = alloca %struct.iscsi_tcp_conn*, align 8
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %2, align 8
  %3 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @ISCSI_DBG_TCP(%struct.TYPE_4__* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %2, align 8
  %19 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @iscsi_tcp_hdr_recv_done, align 4
  %23 = call i32 @iscsi_segment_init_linear(i32* %17, i32 %21, i32 4, i32 %22, i32* null)
  ret void
}

declare dso_local i32 @ISCSI_DBG_TCP(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @iscsi_segment_init_linear(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
