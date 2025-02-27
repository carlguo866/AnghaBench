; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rose_neigh = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@rose_callsign = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.rose_neigh*)* @rose_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_send_frame(%struct.sk_buff* %0, %struct.rose_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rose_neigh*, align 8
  %5 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rose_neigh* %1, %struct.rose_neigh** %4, align 8
  %6 = call i64 @ax25cmp(i32* @rose_callsign, i32* @null_ax25_address)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %10 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  br label %16

15:                                               ; preds = %2
  store i32* @rose_callsign, i32** %5, align 8
  br label %16

16:                                               ; preds = %15, %8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %20 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %19, i32 0, i32 3
  %21 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %22 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %25 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32* @ax25_send_frame(%struct.sk_buff* %17, i32 260, i32* %18, i32* %20, i32 %23, %struct.TYPE_2__* %26)
  %28 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %29 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.rose_neigh*, %struct.rose_neigh** %4, align 8
  %31 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32* @ax25_send_frame(%struct.sk_buff*, i32, i32*, i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
