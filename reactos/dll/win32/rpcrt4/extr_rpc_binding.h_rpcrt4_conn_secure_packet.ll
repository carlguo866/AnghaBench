; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_binding.h_rpcrt4_conn_secure_packet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_binding.h_rpcrt4_conn_secure_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i32*, i32, i8*, i32, i32*, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32, i8*, i32, i32*, i8*, i32)* @rpcrt4_conn_secure_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_conn_secure_packet(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i32* %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_6__*, i32, i32*, i32, i8*, i32, i32*, i8*, i32)*, i32 (%struct.TYPE_6__*, i32, i32*, i32, i8*, i32, i32*, i8*, i32)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = load i32, i32* %18, align 4
  %33 = call i32 %23(%struct.TYPE_6__* %24, i32 %25, i32* %26, i32 %27, i8* %28, i32 %29, i32* %30, i8* %31, i32 %32)
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
