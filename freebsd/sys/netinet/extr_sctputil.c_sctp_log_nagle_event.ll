; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_log_nagle_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctputil.c_sctp_log_nagle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@KTR_SCTP = common dso_local global i32 0, align 4
@SCTP_LOG_EVENT_NAGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_log_nagle_event(%struct.sctp_tcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store i32 %1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
