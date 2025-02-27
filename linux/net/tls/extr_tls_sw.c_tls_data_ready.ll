; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_sw.c_tls_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.tls_sw_context_rx = type { i32 (%struct.sock.0*)*, i32 }
%struct.sock.0 = type opaque
%struct.sk_psock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tls_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_data_ready(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tls_context*, align 8
  %4 = alloca %struct.tls_sw_context_rx*, align 8
  %5 = alloca %struct.sk_psock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %6)
  store %struct.tls_context* %7, %struct.tls_context** %3, align 8
  %8 = load %struct.tls_context*, %struct.tls_context** %3, align 8
  %9 = call %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context* %8)
  store %struct.tls_sw_context_rx* %9, %struct.tls_sw_context_rx** %4, align 8
  %10 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %11 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %10, i32 0, i32 1
  %12 = call i32 @strp_data_ready(i32* %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = call %struct.sk_psock* @sk_psock_get(%struct.sock* %13)
  store %struct.sk_psock* %14, %struct.sk_psock** %5, align 8
  %15 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %16 = icmp ne %struct.sk_psock* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %19 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.tls_sw_context_rx*, %struct.tls_sw_context_rx** %4, align 8
  %24 = getelementptr inbounds %struct.tls_sw_context_rx, %struct.tls_sw_context_rx* %23, i32 0, i32 0
  %25 = load i32 (%struct.sock.0*)*, i32 (%struct.sock.0*)** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = bitcast %struct.sock* %26 to %struct.sock.0*
  %28 = call i32 %25(%struct.sock.0* %27)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %31 = call i32 @sk_psock_put(%struct.sock* %29, %struct.sk_psock* %30)
  br label %32

32:                                               ; preds = %22, %17, %1
  ret void
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.tls_sw_context_rx* @tls_sw_ctx_rx(%struct.tls_context*) #1

declare dso_local i32 @strp_data_ready(i32*) #1

declare dso_local %struct.sk_psock* @sk_psock_get(%struct.sock*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @sk_psock_put(%struct.sock*, %struct.sk_psock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
