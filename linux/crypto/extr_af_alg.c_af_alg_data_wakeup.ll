; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_data_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_data_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.af_alg_ctx* }
%struct.af_alg_ctx = type { i32 }
%struct.socket_wq = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDBAND = common dso_local global i32 0, align 4
@SOCK_WAKE_SPACE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @af_alg_data_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @af_alg_data_wakeup(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.alg_sock*, align 8
  %4 = alloca %struct.af_alg_ctx*, align 8
  %5 = alloca %struct.socket_wq*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.alg_sock* @alg_sk(%struct.sock* %6)
  store %struct.alg_sock* %7, %struct.alg_sock** %3, align 8
  %8 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %9 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %8, i32 0, i32 0
  %10 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %9, align 8
  store %struct.af_alg_ctx* %10, %struct.af_alg_ctx** %4, align 8
  %11 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.socket_wq* @rcu_dereference(i32 %20)
  store %struct.socket_wq* %21, %struct.socket_wq** %5, align 8
  %22 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %23 = call i64 @skwq_has_sleeper(%struct.socket_wq* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.socket_wq*, %struct.socket_wq** %5, align 8
  %27 = getelementptr inbounds %struct.socket_wq, %struct.socket_wq* %26, i32 0, i32 0
  %28 = load i32, i32* @EPOLLOUT, align 4
  %29 = load i32, i32* @EPOLLRDNORM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EPOLLRDBAND, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @wake_up_interruptible_sync_poll(i32* %27, i32 %32)
  br label %34

34:                                               ; preds = %25, %16
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load i32, i32* @SOCK_WAKE_SPACE, align 4
  %37 = load i32, i32* @POLL_OUT, align 4
  %38 = call i32 @sk_wake_async(%struct.sock* %35, i32 %36, i32 %37)
  %39 = call i32 (...) @rcu_read_unlock()
  br label %40

40:                                               ; preds = %34, %15
  ret void
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.socket_wq* @rcu_dereference(i32) #1

declare dso_local i64 @skwq_has_sleeper(%struct.socket_wq*) #1

declare dso_local i32 @wake_up_interruptible_sync_poll(i32*, i32) #1

declare dso_local i32 @sk_wake_async(%struct.sock*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
