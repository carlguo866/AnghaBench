; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_send_ping.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead-client.c_send_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@EAD_TYPE_PING = common dso_local global i32 0, align 4
@msg = common dso_local global %struct.TYPE_2__* null, align 8
@EAD_TYPE_PONG = common dso_local global i32 0, align 4
@handle_pong = common dso_local global i32 0, align 4
@nid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_ping() #0 {
  %1 = load i32, i32* @EAD_TYPE_PING, align 4
  %2 = call i32 @htonl(i32 %1)
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msg, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %2, i32* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msg, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @EAD_TYPE_PONG, align 4
  %8 = load i32, i32* @handle_pong, align 4
  %9 = load i32, i32* @nid, align 4
  %10 = icmp eq i32 %9, 65535
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  %13 = call i32 @send_packet(i32 %7, i32 %8, i32 %12)
  ret i32 %13
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @send_packet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
