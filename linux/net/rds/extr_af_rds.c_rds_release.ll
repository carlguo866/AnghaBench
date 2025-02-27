; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_release.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_af_rds.c_rds_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.rds_sock = type { i32, i32, i32 }

@rds_sock_lock = common dso_local global i32 0, align 4
@rds_sock_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @rds_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rds_sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.rds_sock* @rds_sk_to_rs(%struct.sock* %12)
  store %struct.rds_sock* %13, %struct.rds_sock** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @sock_orphan(%struct.sock* %14)
  %16 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %17 = call i32 @rds_clear_recv_queue(%struct.rds_sock* %16)
  %18 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %19 = call i32 @rds_cong_remove_socket(%struct.rds_sock* %18)
  %20 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %21 = call i32 @rds_remove_bound(%struct.rds_sock* %20)
  %22 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %23 = call i32 @rds_send_drop_to(%struct.rds_sock* %22, i32* null)
  %24 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %25 = call i32 @rds_rdma_drop_keys(%struct.rds_sock* %24)
  %26 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %27 = call i32 @rds_notify_queue_get(%struct.rds_sock* %26, i32* null)
  %28 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %29 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %28, i32 0, i32 2
  %30 = call i32 @rds_notify_msg_zcopy_purge(i32* %29)
  %31 = call i32 @spin_lock_bh(i32* @rds_sock_lock)
  %32 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %33 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %32, i32 0, i32 1
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load i32, i32* @rds_sock_count, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @rds_sock_count, align 4
  %37 = call i32 @spin_unlock_bh(i32* @rds_sock_lock)
  %38 = load %struct.rds_sock*, %struct.rds_sock** %4, align 8
  %39 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rds_trans_put(i32 %40)
  %42 = load %struct.socket*, %struct.socket** %2, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %43, align 8
  %44 = load %struct.sock*, %struct.sock** %3, align 8
  %45 = call i32 @sock_put(%struct.sock* %44)
  br label %46

46:                                               ; preds = %11, %10
  ret i32 0
}

declare dso_local %struct.rds_sock* @rds_sk_to_rs(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @rds_clear_recv_queue(%struct.rds_sock*) #1

declare dso_local i32 @rds_cong_remove_socket(%struct.rds_sock*) #1

declare dso_local i32 @rds_remove_bound(%struct.rds_sock*) #1

declare dso_local i32 @rds_send_drop_to(%struct.rds_sock*, i32*) #1

declare dso_local i32 @rds_rdma_drop_keys(%struct.rds_sock*) #1

declare dso_local i32 @rds_notify_queue_get(%struct.rds_sock*, i32*) #1

declare dso_local i32 @rds_notify_msg_zcopy_purge(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rds_trans_put(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
