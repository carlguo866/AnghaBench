; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_buf.c_buf_get_size.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_buf.c_buf_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }

@UT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @buf_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_get_size(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @UT64_MAX, align 4
  %14 = call i32 @r_return_val_if_fail(i32 %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.TYPE_6__*)**
  %20 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %19, align 8
  %21 = icmp ne i32 (%struct.TYPE_6__*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.TYPE_6__*)**
  %28 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = call i32 %28(%struct.TYPE_6__* %29)
  br label %33

31:                                               ; preds = %10
  %32 = load i32, i32* @UT64_MAX, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ %30, %22 ], [ %32, %31 ]
  ret i32 %34
}

declare dso_local i32 @r_return_val_if_fail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
