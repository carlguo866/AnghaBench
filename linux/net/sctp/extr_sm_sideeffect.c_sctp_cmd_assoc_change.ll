; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_cmd_assoc_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_cmd_seq = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, %struct.sctp_ulpevent*)* }
%struct.sctp_ulpevent = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_cmd_seq*, %struct.sctp_association*, i32)* @sctp_cmd_assoc_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_assoc_change(%struct.sctp_cmd_seq* %0, %struct.sctp_association* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_cmd_seq*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_ulpevent*, align 8
  store %struct.sctp_cmd_seq* %0, %struct.sctp_cmd_seq** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association* %8, i32 0, i32 %9, i32 0, i32 %13, i32 %17, i32* null, i32 %18)
  store %struct.sctp_ulpevent* %19, %struct.sctp_ulpevent** %7, align 8
  %20 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %21 = icmp ne %struct.sctp_ulpevent* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (i32*, %struct.sctp_ulpevent*)*, i32 (i32*, %struct.sctp_ulpevent*)** %27, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %32 = call i32 %28(i32* %30, %struct.sctp_ulpevent* %31)
  br label %33

33:                                               ; preds = %22, %3
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_assoc_change(%struct.sctp_association*, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
