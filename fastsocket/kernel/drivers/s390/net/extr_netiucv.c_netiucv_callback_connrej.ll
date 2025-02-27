; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_callback_connrej.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_callback_connrej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { %struct.iucv_connection* }
%struct.iucv_connection = type { i32 }

@CONN_EVENT_CONN_REJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_path*, i32*)* @netiucv_callback_connrej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netiucv_callback_connrej(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iucv_connection*, align 8
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %7 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %6, i32 0, i32 0
  %8 = load %struct.iucv_connection*, %struct.iucv_connection** %7, align 8
  store %struct.iucv_connection* %8, %struct.iucv_connection** %5, align 8
  %9 = load %struct.iucv_connection*, %struct.iucv_connection** %5, align 8
  %10 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CONN_EVENT_CONN_REJ, align 4
  %13 = load %struct.iucv_connection*, %struct.iucv_connection** %5, align 8
  %14 = call i32 @fsm_event(i32 %11, i32 %12, %struct.iucv_connection* %13)
  ret void
}

declare dso_local i32 @fsm_event(i32, i32, %struct.iucv_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
