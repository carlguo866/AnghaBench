; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_add_cname_to_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_add_cname_to_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_getaddrinfo_request = type { i32* }
%struct.evutil_addrinfo = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_getaddrinfo_request*, %struct.evutil_addrinfo*)* @add_cname_to_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cname_to_reply(%struct.evdns_getaddrinfo_request* %0, %struct.evutil_addrinfo* %1) #0 {
  %3 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %4 = alloca %struct.evutil_addrinfo*, align 8
  store %struct.evdns_getaddrinfo_request* %0, %struct.evdns_getaddrinfo_request** %3, align 8
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %4, align 8
  %5 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %3, align 8
  %6 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %11 = icmp ne %struct.evutil_addrinfo* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %3, align 8
  %14 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  %17 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %3, align 8
  %19 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %12, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
