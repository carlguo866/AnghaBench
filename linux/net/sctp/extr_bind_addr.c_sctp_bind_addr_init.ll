; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_bind_addr_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_bind_addr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_bind_addr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_bind_addr_init(%struct.sctp_bind_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_bind_addr*, align 8
  %4 = alloca i32, align 4
  store %struct.sctp_bind_addr* %0, %struct.sctp_bind_addr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %5, i32 0, i32 1
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
