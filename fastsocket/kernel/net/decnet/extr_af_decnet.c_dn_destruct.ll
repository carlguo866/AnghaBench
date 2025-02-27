; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dn_scp = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dn_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dn_scp*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.dn_scp* @DN_SK(%struct.sock* %4)
  store %struct.dn_scp* %5, %struct.dn_scp** %3, align 8
  %6 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %7 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %6, i32 0, i32 2
  %8 = call i32 @skb_queue_purge(i32* %7)
  %9 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %10 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %9, i32 0, i32 1
  %11 = call i32 @skb_queue_purge(i32* %10)
  %12 = load %struct.dn_scp*, %struct.dn_scp** %3, align 8
  %13 = getelementptr inbounds %struct.dn_scp, %struct.dn_scp* %12, i32 0, i32 0
  %14 = call i32 @skb_queue_purge(i32* %13)
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = call i32 @xchg(i32* %16, i32* null)
  %18 = call i32 @dst_release(i32 %17)
  ret void
}

declare dso_local %struct.dn_scp* @DN_SK(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @dst_release(i32) #1

declare dso_local i32 @xchg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
