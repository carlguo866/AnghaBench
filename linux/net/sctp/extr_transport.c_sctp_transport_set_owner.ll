; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_set_owner.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.sctp_association* }
%struct.sctp_association = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_set_owner(%struct.sctp_transport* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %6 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %6, i32 0, i32 0
  store %struct.sctp_association* %5, %struct.sctp_association** %7, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = call i32 @sctp_association_hold(%struct.sctp_association* %8)
  ret void
}

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
