; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_shutdown_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_shutdown_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_shutdown_event = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }

@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_SHUTDOWN_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_shutdown_event(%struct.sctp_association* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sctp_shutdown_event*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSG_NOTIFICATION, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.sctp_ulpevent* @sctp_ulpevent_new(i32 24, i32 %11, i32 %12)
  store %struct.sctp_ulpevent* %13, %struct.sctp_ulpevent** %8, align 8
  %14 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %15 = icmp ne %struct.sctp_ulpevent* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %19 = call %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = call %struct.sctp_shutdown_event* @skb_put(%struct.sk_buff* %20, i32 24)
  store %struct.sctp_shutdown_event* %21, %struct.sctp_shutdown_event** %9, align 8
  %22 = load i32, i32* @SCTP_SHUTDOWN_EVENT, align 4
  %23 = load %struct.sctp_shutdown_event*, %struct.sctp_shutdown_event** %9, align 8
  %24 = getelementptr inbounds %struct.sctp_shutdown_event, %struct.sctp_shutdown_event* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sctp_shutdown_event*, %struct.sctp_shutdown_event** %9, align 8
  %26 = getelementptr inbounds %struct.sctp_shutdown_event, %struct.sctp_shutdown_event* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.sctp_shutdown_event*, %struct.sctp_shutdown_event** %9, align 8
  %28 = getelementptr inbounds %struct.sctp_shutdown_event, %struct.sctp_shutdown_event* %27, i32 0, i32 0
  store i32 24, i32* %28, align 8
  %29 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %31 = call i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent* %29, %struct.sctp_association* %30)
  %32 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %33 = call i32 @sctp_assoc2id(%struct.sctp_association* %32)
  %34 = load %struct.sctp_shutdown_event*, %struct.sctp_shutdown_event** %9, align 8
  %35 = getelementptr inbounds %struct.sctp_shutdown_event, %struct.sctp_shutdown_event* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  store %struct.sctp_ulpevent* %36, %struct.sctp_ulpevent** %4, align 8
  br label %38

37:                                               ; preds = %16
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %4, align 8
  br label %38

38:                                               ; preds = %37, %17
  %39 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  ret %struct.sctp_ulpevent* %39
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_new(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @sctp_event2skb(%struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_shutdown_event* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @sctp_ulpevent_set_owner(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
