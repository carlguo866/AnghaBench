; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_accept_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_accept_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.evhttp_bound_socket = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evhttp_accept_socket(%struct.evhttp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_bound_socket*, align 8
  store %struct.evhttp* %0, %struct.evhttp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.evhttp_bound_socket* @evhttp_accept_socket_with_handle(%struct.evhttp* %7, i32 %8)
  store %struct.evhttp_bound_socket* %9, %struct.evhttp_bound_socket** %6, align 8
  %10 = load %struct.evhttp_bound_socket*, %struct.evhttp_bound_socket** %6, align 8
  %11 = icmp eq %struct.evhttp_bound_socket* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local %struct.evhttp_bound_socket* @evhttp_accept_socket_with_handle(%struct.evhttp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
