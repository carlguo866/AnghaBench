; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_ushutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_ushutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"raw_ushutdown: rp == NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @raw_ushutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_ushutdown(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = call i32* @sotorawcb(%struct.socket* %3)
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = call i32 @socantsendmore(%struct.socket* %8)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
