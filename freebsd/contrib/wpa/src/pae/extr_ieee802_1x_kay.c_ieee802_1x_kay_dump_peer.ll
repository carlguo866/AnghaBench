; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_dump_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_kay_dump_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_kay_peer = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09MI: %s  MN: %d  SCI: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802_1x_kay_peer*)* @ieee802_1x_kay_dump_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_kay_dump_peer(%struct.ieee802_1x_kay_peer* %0) #0 {
  %2 = alloca %struct.ieee802_1x_kay_peer*, align 8
  store %struct.ieee802_1x_kay_peer* %0, %struct.ieee802_1x_kay_peer** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @mi_txt(i32 %6)
  %8 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %2, align 8
  %9 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ieee802_1x_kay_peer*, %struct.ieee802_1x_kay_peer** %2, align 8
  %12 = getelementptr inbounds %struct.ieee802_1x_kay_peer, %struct.ieee802_1x_kay_peer* %11, i32 0, i32 0
  %13 = call i32 @sci_txt(i32* %12)
  %14 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mi_txt(i32) #1

declare dso_local i32 @sci_txt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
