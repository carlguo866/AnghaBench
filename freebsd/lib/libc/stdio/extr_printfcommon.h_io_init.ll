; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_io_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printfcommon.h_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_state = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_state*, i32*)* @io_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_init(%struct.io_state* %0, i32* %1) #0 {
  %3 = alloca %struct.io_state*, align 8
  %4 = alloca i32*, align 8
  store %struct.io_state* %0, %struct.io_state** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.io_state*, %struct.io_state** %3, align 8
  %6 = getelementptr inbounds %struct.io_state, %struct.io_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.io_state*, %struct.io_state** %3, align 8
  %9 = getelementptr inbounds %struct.io_state, %struct.io_state* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %7, i32* %10, align 8
  %11 = load %struct.io_state*, %struct.io_state** %3, align 8
  %12 = getelementptr inbounds %struct.io_state, %struct.io_state* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.io_state*, %struct.io_state** %3, align 8
  %15 = getelementptr inbounds %struct.io_state, %struct.io_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.io_state*, %struct.io_state** %3, align 8
  %19 = getelementptr inbounds %struct.io_state, %struct.io_state* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
