; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v0_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_encode_v0_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_upcall_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gss_upcall_msg*)* @gss_encode_v0_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gss_encode_v0_msg(%struct.gss_upcall_msg* %0) #0 {
  %2 = alloca %struct.gss_upcall_msg*, align 8
  store %struct.gss_upcall_msg* %0, %struct.gss_upcall_msg** %2, align 8
  %3 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %4 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %3, i32 0, i32 1
  %5 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %6 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32* %4, i32** %7, align 8
  %8 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %2, align 8
  %9 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 4, i32* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
