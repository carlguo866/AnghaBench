; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_descr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_init_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i32, i32, %struct.sockaddr* }
%struct.sockaddr = type { i32 }

@rk_INVALID_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.descr*)* @init_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_descr(%struct.descr* %0) #0 {
  %2 = alloca %struct.descr*, align 8
  store %struct.descr* %0, %struct.descr** %2, align 8
  %3 = load %struct.descr*, %struct.descr** %2, align 8
  %4 = call i32 @memset(%struct.descr* %3, i32 0, i32 16)
  %5 = load %struct.descr*, %struct.descr** %2, align 8
  %6 = getelementptr inbounds %struct.descr, %struct.descr* %5, i32 0, i32 1
  %7 = bitcast i32* %6 to %struct.sockaddr*
  %8 = load %struct.descr*, %struct.descr** %2, align 8
  %9 = getelementptr inbounds %struct.descr, %struct.descr* %8, i32 0, i32 2
  store %struct.sockaddr* %7, %struct.sockaddr** %9, align 8
  %10 = load i32, i32* @rk_INVALID_SOCKET, align 4
  %11 = load %struct.descr*, %struct.descr** %2, align 8
  %12 = getelementptr inbounds %struct.descr, %struct.descr* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  ret void
}

declare dso_local i32 @memset(%struct.descr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
