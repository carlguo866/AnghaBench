; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_linkdowndefaultstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_linkdowndefaultstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @set_linkdowndefaultstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_linkdowndefaultstate(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE, align 4
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @INFINIPATH_IBCC_LINKDOWNDEFAULTSTATE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %13, %7
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %21, i32 %26, i32 %29)
  ret i32 0
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
