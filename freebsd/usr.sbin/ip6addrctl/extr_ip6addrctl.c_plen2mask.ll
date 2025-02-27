; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_plen2mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_plen2mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_in6*, i32)* @plen2mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plen2mask(%struct.sockaddr_in6* %0, i32 %1) #0 {
  %3 = alloca %struct.sockaddr_in6*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %7 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %11 = call i32 @memset(%struct.sockaddr_in6* %10, i32 0, i32 12)
  %12 = load i32, i32* @AF_INET6, align 4
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %3, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store i32 12, i32* %16, align 4
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 255, i32* %21, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %4, align 4
  br label %17

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 8, %30
  %32 = shl i32 255, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
