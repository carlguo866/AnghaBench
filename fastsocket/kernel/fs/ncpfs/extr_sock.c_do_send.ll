; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_do_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.kvec = type { i32 }
%struct.msghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.kvec*, i32, i32, i32)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_send(%struct.socket* %0, %struct.kvec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.msghdr, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 0
  %13 = load i32, i32* %10, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = load %struct.kvec*, %struct.kvec** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @kernel_sendmsg(%struct.socket* %14, %struct.msghdr* %11, %struct.kvec* %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
