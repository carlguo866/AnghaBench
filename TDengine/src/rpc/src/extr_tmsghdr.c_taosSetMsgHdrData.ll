; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tmsghdr.c_taosSetMsgHdrData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_tmsghdr.c_taosSetMsgHdrData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosSetMsgHdrData(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.msghdr*
  store %struct.msghdr* %9, %struct.msghdr** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %15 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %10, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %20, i64* %28, align 8
  %29 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
