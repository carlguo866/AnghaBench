; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_dump_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_dump_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfkey_sock = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfkey_sock*)* @pfkey_dump_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfkey_dump_sp_done(%struct.pfkey_sock* %0) #0 {
  %2 = alloca %struct.pfkey_sock*, align 8
  %3 = alloca %struct.net*, align 8
  store %struct.pfkey_sock* %0, %struct.pfkey_sock** %2, align 8
  %4 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %5 = bitcast %struct.pfkey_sock* %4 to %struct.sock*
  %6 = call %struct.net* @sock_net(%struct.sock* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %8 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = call i32 @xfrm_policy_walk_done(i32* %10, %struct.net* %11)
  ret void
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @xfrm_policy_walk_done(i32*, %struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
