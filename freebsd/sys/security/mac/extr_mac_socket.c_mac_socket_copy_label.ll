; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_copy_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_copy_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }

@socket_copy_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_socket_copy_label(%struct.label* %0, %struct.label* %1) #0 {
  %3 = alloca %struct.label*, align 8
  %4 = alloca %struct.label*, align 8
  store %struct.label* %0, %struct.label** %3, align 8
  store %struct.label* %1, %struct.label** %4, align 8
  %5 = load i32, i32* @socket_copy_label, align 4
  %6 = load %struct.label*, %struct.label** %3, align 8
  %7 = load %struct.label*, %struct.label** %4, align 8
  %8 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %5, %struct.label* %6, %struct.label* %7)
  ret void
}

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.label*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
