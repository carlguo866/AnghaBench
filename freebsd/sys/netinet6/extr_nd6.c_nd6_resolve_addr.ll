; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_resolve_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6.c_nd6_resolve_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@LLE_ADDRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_resolve_addr(%struct.ifnet* %0, i32 %1, %struct.sockaddr* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* @LLE_ADDRONLY, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in6*
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @nd6_resolve_slow(%struct.ifnet* %15, i32 %16, i32* null, %struct.sockaddr_in6* %18, i8* %19, i32* %20, i32* null)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  ret i32 %22
}

declare dso_local i32 @nd6_resolve_slow(%struct.ifnet*, i32, i32*, %struct.sockaddr_in6*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
