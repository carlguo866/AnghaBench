; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_soc.c_ext_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_soc.c_ext_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"ou_refcnt=%d a=%p b=%p\00", align 1
@ou_refcnt = common dso_local global i32 0, align 4
@M_ISCSIBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @ext_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %4 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %5 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @ou_refcnt, align 4
  %14 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @debug(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_ISCSIBUF, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
