; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_get_port.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpproto.c_get_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*)* @get_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_port(%struct.sockaddr_storage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_storage*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %3, align 8
  %4 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %5 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AF_INET, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %3, align 8
  %11 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in*
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
