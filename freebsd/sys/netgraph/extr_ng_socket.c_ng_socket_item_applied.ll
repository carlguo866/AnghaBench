; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_socket_item_applied.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_socket.c_ng_socket_item_applied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngsock = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ng_socket_item_applied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_socket_item_applied(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ngsock*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ngsock*
  store %struct.ngsock* %7, %struct.ngsock** %5, align 8
  %8 = load %struct.ngsock*, %struct.ngsock** %5, align 8
  %9 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %8, i32 0, i32 1
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ngsock*, %struct.ngsock** %5, align 8
  %13 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ngsock*, %struct.ngsock** %5, align 8
  %15 = call i32 @wakeup(%struct.ngsock* %14)
  %16 = load %struct.ngsock*, %struct.ngsock** %5, align 8
  %17 = getelementptr inbounds %struct.ngsock, %struct.ngsock* %16, i32 0, i32 1
  %18 = call i32 @mtx_unlock(i32* %17)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.ngsock*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
