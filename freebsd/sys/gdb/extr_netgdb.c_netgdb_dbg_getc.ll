; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_netgdb.c_netgdb_dbg_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_netgdb.c_netgdb_dbg_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 (...)* }

@netgdb_rx_off = common dso_local global i64 0, align 8
@netgdb_rxsb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@netgdb_prev_dbgport = common dso_local global %struct.TYPE_6__* null, align 8
@netgdb_conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @netgdb_dbg_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netgdb_dbg_getc() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %27
  %3 = load i64, i64* @netgdb_rx_off, align 8
  %4 = call i64 @sbuf_len(%struct.TYPE_5__* @netgdb_rxsb)
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @netgdb_rxsb, i32 0, i32 0), align 8
  %8 = load i64, i64* @netgdb_rx_off, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i64, i64* @netgdb_rx_off, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @netgdb_rx_off, align 8
  br label %30

13:                                               ; preds = %2
  %14 = call i32 @sbuf_clear(%struct.TYPE_5__* @netgdb_rxsb)
  store i64 0, i64* @netgdb_rx_off, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @netgdb_prev_dbgport, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @netgdb_prev_dbgport, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @CTRL(i8 signext 67)
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* @netgdb_conn, align 4
  %29 = call i32 @debugnet_network_poll(i32 %28)
  br label %2

30:                                               ; preds = %25, %6
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @CTRL(i8 signext 67)
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (...) @netgdb_fini()
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @sbuf_len(%struct.TYPE_5__*) #1

declare dso_local i32 @sbuf_clear(%struct.TYPE_5__*) #1

declare dso_local i32 @CTRL(i8 signext) #1

declare dso_local i32 @debugnet_network_poll(i32) #1

declare dso_local i32 @netgdb_fini(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
