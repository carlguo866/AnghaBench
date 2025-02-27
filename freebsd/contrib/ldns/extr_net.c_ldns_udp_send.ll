; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_udp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_udp_send(i32** %0, i32* %1, %struct.sockaddr_storage* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %4, i32* %13, align 4
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i64*, i64** %12, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ldns_udp_send_from(i32** %14, i32* %15, %struct.sockaddr_storage* %16, i32 %17, i32* null, i32 0, i32 %20, i64* %18)
  ret i32 %21
}

declare dso_local i32 @ldns_udp_send_from(i32**, i32*, %struct.sockaddr_storage*, i32, i32*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
