; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_set_handshake_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_set_handshake_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32)* @ocfs2_control_set_handshake_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_control_set_handshake_state(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_control_private*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %7, align 8
  store %struct.ocfs2_control_private* %8, %struct.ocfs2_control_private** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
