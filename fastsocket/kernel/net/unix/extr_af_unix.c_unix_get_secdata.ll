; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_get_secdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_get_secdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_cookie = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_cookie*, %struct.sk_buff*)* @unix_get_secdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_get_secdata(%struct.scm_cookie* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.scm_cookie*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.scm_cookie* %0, %struct.scm_cookie** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
