; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_conn_action_inval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_conn_action_inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s('%s'): conn_action_inval called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @conn_action_inval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_action_inval(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iucv_connection*, align 8
  %8 = alloca %struct.net_device*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.iucv_connection*
  store %struct.iucv_connection* %10, %struct.iucv_connection** %7, align 8
  %11 = load %struct.iucv_connection*, %struct.iucv_connection** %7, align 8
  %12 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i32, i32* @data, align 4
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iucv_connection*, %struct.iucv_connection** %7, align 8
  %19 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IUCV_DBF_TEXT_(i32 %14, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  ret void
}

declare dso_local i32 @IUCV_DBF_TEXT_(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
