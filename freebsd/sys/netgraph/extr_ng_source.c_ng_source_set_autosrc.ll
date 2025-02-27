; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_set_autosrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_set_autosrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ng_mesg = type { i64 }

@NGM_ETHER_COOKIE = common dso_local global i32 0, align 4
@NGM_ETHER_SET_AUTOSRC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @ng_source_set_autosrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_source_set_autosrc(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ng_mesg*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %9 = load i32, i32* @NGM_ETHER_COOKIE, align 4
  %10 = load i32, i32* @NGM_ETHER_SET_AUTOSRC, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %8, i32 %9, i32 %10, i32 4, i32 %11)
  %13 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %14 = icmp eq %struct.ng_mesg* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOBUFS, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %6, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NG_SEND_MSG_HOOK(i32 %23, i32 %26, %struct.ng_mesg* %27, i32 %30, i32 0)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32, %struct.ng_mesg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
