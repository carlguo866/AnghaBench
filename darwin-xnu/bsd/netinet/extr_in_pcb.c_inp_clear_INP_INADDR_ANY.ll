; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_clear_INP_INADDR_ANY.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_clear_INP_INADDR_ANY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32 }

@INP_INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inp_clear_INP_INADDR_ANY(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.inpcb* null, %struct.inpcb** %3, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call i32 @socket_lock(%struct.socket* %4, i32 1)
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call %struct.inpcb* @sotoinpcb(%struct.socket* %6)
  store %struct.inpcb* %7, %struct.inpcb** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = icmp ne %struct.inpcb* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @INP_INADDR_ANY, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.socket*, %struct.socket** %2, align 8
  %19 = call i32 @socket_unlock(%struct.socket* %18, i32 1)
  ret void
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
