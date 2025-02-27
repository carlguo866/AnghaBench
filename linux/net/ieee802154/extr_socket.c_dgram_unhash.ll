; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_unhash.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_unhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@dgram_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @dgram_unhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dgram_unhash(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = call i32 @write_lock_bh(i32* @dgram_lock)
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i64 @sk_del_node_init(%struct.sock* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call i32 @sock_net(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sock_prot_inuse_add(i32 %9, i32 %12, i32 -1)
  br label %14

14:                                               ; preds = %7, %1
  %15 = call i32 @write_unlock_bh(i32* @dgram_lock)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @sk_del_node_init(%struct.sock*) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
