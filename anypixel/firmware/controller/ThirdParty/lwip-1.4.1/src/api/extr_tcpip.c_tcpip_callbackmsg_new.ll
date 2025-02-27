; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_callbackmsg_new.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/api/extr_tcpip.c_tcpip_callbackmsg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_callback_msg = type { i32 }
%struct.tcpip_msg = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@MEMP_TCPIP_MSG_API = common dso_local global i32 0, align 4
@TCPIP_MSG_CALLBACK_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcpip_callback_msg* @tcpip_callbackmsg_new(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.tcpip_callback_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcpip_msg*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @MEMP_TCPIP_MSG_API, align 4
  %8 = call i64 @memp_malloc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.tcpip_msg*
  store %struct.tcpip_msg* %9, %struct.tcpip_msg** %6, align 8
  %10 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %11 = icmp eq %struct.tcpip_msg* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.tcpip_callback_msg* null, %struct.tcpip_callback_msg** %3, align 8
  br label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @TCPIP_MSG_CALLBACK_STATIC, align 4
  %15 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %16 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %19 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %24 = getelementptr inbounds %struct.tcpip_msg, %struct.tcpip_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.tcpip_msg*, %struct.tcpip_msg** %6, align 8
  %28 = bitcast %struct.tcpip_msg* %27 to %struct.tcpip_callback_msg*
  store %struct.tcpip_callback_msg* %28, %struct.tcpip_callback_msg** %3, align 8
  br label %29

29:                                               ; preds = %13, %12
  %30 = load %struct.tcpip_callback_msg*, %struct.tcpip_callback_msg** %3, align 8
  ret %struct.tcpip_callback_msg* %30
}

declare dso_local i64 @memp_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
