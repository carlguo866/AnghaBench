; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Attempt to destroy undead transport %p!\0A\00", align 1
@sctp_transport_destroy_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_transport*)* @sctp_transport_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_transport_destroy(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %3 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %3, i32 0, i32 3
  %5 = call i32 @refcount_read(i32* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %10 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.sctp_transport* %9)
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 2
  %14 = call i32 @sctp_packet_free(i32* %13)
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %16 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %21 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sctp_association_put(i64 %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %25, i32 0, i32 0
  %27 = load i32, i32* @sctp_transport_destroy_rcu, align 4
  %28 = call i32 @call_rcu(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %8
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @WARN(i32, i8*, %struct.sctp_transport*) #1

declare dso_local i32 @sctp_packet_free(i32*) #1

declare dso_local i32 @sctp_association_put(i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
