; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_bundle_sack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_output.c_sctp_packet_bundle_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_packet = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.timer_list* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_XMIT_OK = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i64 0, align 8
@SCTP_MIB_OUTCTRLCHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_packet*, %struct.sctp_chunk*)* @sctp_packet_bundle_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_packet_bundle_sack(%struct.sctp_packet* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_packet*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.timer_list*, align 8
  %9 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_packet* %0, %struct.sctp_packet** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  %10 = load i32, i32* @SCTP_XMIT_OK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %12 = call i64 @sctp_chunk_is_data(%struct.sctp_chunk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %2
  %15 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %100, label %19

19:                                               ; preds = %14
  %20 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %100, label %24

24:                                               ; preds = %19
  %25 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.sctp_association*, %struct.sctp_association** %28, align 8
  store %struct.sctp_association* %29, %struct.sctp_association** %7, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 5
  %32 = load %struct.timer_list*, %struct.timer_list** %31, align 8
  %33 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %34 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %32, i64 %33
  store %struct.timer_list* %34, %struct.timer_list** %8, align 8
  %35 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %36 = call i64 @timer_pending(%struct.timer_list* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %24
  %39 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %45 = getelementptr inbounds %struct.sctp_packet, %struct.sctp_packet* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.sctp_association*, %struct.sctp_association** %47, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %43, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %103

55:                                               ; preds = %38
  %56 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %62 = call %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association* %61)
  store %struct.sctp_chunk* %62, %struct.sctp_chunk** %9, align 8
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %64 = icmp ne %struct.sctp_chunk* %63, null
  br i1 %64, label %65, label %98

65:                                               ; preds = %55
  %66 = load %struct.sctp_packet*, %struct.sctp_packet** %4, align 8
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %68 = call i32 @__sctp_packet_append_chunk(%struct.sctp_packet* %66, %struct.sctp_chunk* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SCTP_XMIT_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %74 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %73)
  br label %101

75:                                               ; preds = %65
  %76 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sock_net(i32 %79)
  %81 = load i32, i32* @SCTP_MIB_OUTCTRLCHUNKS, align 4
  %82 = call i32 @SCTP_INC_STATS(i32 %80, i32 %81)
  %83 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %84 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %89 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.timer_list*, %struct.timer_list** %8, align 8
  %92 = call i64 @del_timer(%struct.timer_list* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %75
  %95 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %96 = call i32 @sctp_association_put(%struct.sctp_association* %95)
  br label %97

97:                                               ; preds = %94, %75
  br label %98

98:                                               ; preds = %97, %55
  br label %99

99:                                               ; preds = %98, %24
  br label %100

100:                                              ; preds = %99, %19, %14, %2
  br label %101

101:                                              ; preds = %100, %72
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %53
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @sctp_chunk_is_data(%struct.sctp_chunk*) #1

declare dso_local i64 @timer_pending(%struct.timer_list*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association*) #1

declare dso_local i32 @__sctp_packet_append_chunk(%struct.sctp_packet*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @SCTP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @del_timer(%struct.timer_list*) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
