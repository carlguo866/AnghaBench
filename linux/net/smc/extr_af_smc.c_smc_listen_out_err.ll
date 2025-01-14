; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_out_err.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_af_smc.c_smc_listen_out_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, %struct.sock }
%struct.sock = type { i64 }

@SMC_INIT = common dso_local global i64 0, align 8
@SMC_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*)* @smc_listen_out_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_listen_out_err(%struct.smc_sock* %0) #0 {
  %2 = alloca %struct.smc_sock*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %2, align 8
  %4 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %5 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %4, i32 0, i32 1
  store %struct.sock* %5, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SMC_INIT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %13 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %12, i32 0, i32 1
  %14 = call i32 @sock_put(%struct.sock* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i64, i64* @SMC_CLOSED, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %20 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %19, i32 0, i32 0
  %21 = call i32 @smc_conn_free(i32* %20)
  %22 = load %struct.smc_sock*, %struct.smc_sock** %2, align 8
  %23 = call i32 @smc_listen_out(%struct.smc_sock* %22)
  ret void
}

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @smc_conn_free(i32*) #1

declare dso_local i32 @smc_listen_out(%struct.smc_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
