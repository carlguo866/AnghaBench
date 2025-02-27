; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-1394.c_node_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-1394.c_node_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }

@EXTCODE_COMPARE_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i32, i8*)* @node_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_lock(%struct.firedtv* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %12 = call i32 @node_of(%struct.firedtv* %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @EXTCODE_COMPARE_SWAP, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hpsb_node_lock(i32 %12, i32 %13, i32 %14, i32* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local i32 @hpsb_node_lock(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @node_of(%struct.firedtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
