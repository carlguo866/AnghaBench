; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_seq_dump_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_seq_dump_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%pI6 \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %union.sctp_addr*)* @sctp_v6_seq_dump_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_v6_seq_dump_addr(%struct.seq_file* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %union.sctp_addr*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %7 = bitcast %union.sctp_addr* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
