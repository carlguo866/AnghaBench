; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_not_impl.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_not_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }

@SCTP_DISPOSITION_NOT_IMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_not_impl(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca %union.sctp_subtype, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca %struct.sctp_association*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sctp_cmd_seq*, align 8
  %13 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %9, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %12, align 8
  %14 = load i32, i32* @SCTP_DISPOSITION_NOT_IMPL, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
