; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_handle_send_auth.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/extr_ead.c_handle_send_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ead_msg }
%struct.ead_msg = type { i32 }
%struct.ead_msg_auth = type { i32 }
%struct.ead_packet = type { %struct.ead_msg }

@ts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Client authentication failed\0A\00", align 1
@EAD_TYPE_SET_USERNAME = common dso_local global i32 0, align 4
@pktbuf = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Client authentication successful\0A\00", align 1
@EAD_TYPE_SEND_CMD = common dso_local global i32 0, align 4
@auth = common dso_local global %struct.ead_msg_auth* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ead_packet*, i32, i32*)* @handle_send_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_auth(%struct.ead_packet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ead_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ead_msg*, align 8
  %9 = alloca %struct.ead_msg_auth*, align 8
  store %struct.ead_packet* %0, %struct.ead_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ead_packet*, %struct.ead_packet** %5, align 8
  %11 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %10, i32 0, i32 0
  store %struct.ead_msg* %11, %struct.ead_msg** %8, align 8
  %12 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %13 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %9, align 8
  %14 = call %struct.ead_msg_auth* @EAD_DATA(%struct.ead_msg* %12, %struct.ead_msg_auth* %13)
  store %struct.ead_msg_auth* %14, %struct.ead_msg_auth** %9, align 8
  %15 = load i32, i32* @ts, align 4
  %16 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %9, align 8
  %17 = getelementptr inbounds %struct.ead_msg_auth, %struct.ead_msg_auth* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @t_serververify(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EAD_TYPE_SET_USERNAME, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %43

25:                                               ; preds = %3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pktbuf, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.ead_msg* %27, %struct.ead_msg** %8, align 8
  %28 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %29 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %9, align 8
  %30 = call %struct.ead_msg_auth* @EAD_DATA(%struct.ead_msg* %28, %struct.ead_msg_auth* %29)
  store %struct.ead_msg_auth* %30, %struct.ead_msg_auth** %9, align 8
  %31 = call i32 @htonl(i32 4)
  %32 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %33 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ead_msg_auth*, %struct.ead_msg_auth** %9, align 8
  %36 = getelementptr inbounds %struct.ead_msg_auth, %struct.ead_msg_auth* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ts, align 4
  %39 = call i32 @t_serverresponse(i32 %38)
  %40 = call i32 @memcpy(i32 %37, i32 %39, i32 4)
  %41 = load i32, i32* @EAD_TYPE_SEND_CMD, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %25, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.ead_msg_auth* @EAD_DATA(%struct.ead_msg*, %struct.ead_msg_auth*) #1

declare dso_local i64 @t_serververify(i32, i32) #1

declare dso_local i32 @DEBUG(i32, i8*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @t_serverresponse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
