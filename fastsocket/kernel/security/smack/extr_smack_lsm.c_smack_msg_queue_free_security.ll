; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_msg_queue_free_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/smack/extr_smack_lsm.c_smack_msg_queue_free_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_queue = type { %struct.kern_ipc_perm }
%struct.kern_ipc_perm = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_queue*)* @smack_msg_queue_free_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_msg_queue_free_security(%struct.msg_queue* %0) #0 {
  %2 = alloca %struct.msg_queue*, align 8
  %3 = alloca %struct.kern_ipc_perm*, align 8
  store %struct.msg_queue* %0, %struct.msg_queue** %2, align 8
  %4 = load %struct.msg_queue*, %struct.msg_queue** %2, align 8
  %5 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %4, i32 0, i32 0
  store %struct.kern_ipc_perm* %5, %struct.kern_ipc_perm** %3, align 8
  %6 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %3, align 8
  %7 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
