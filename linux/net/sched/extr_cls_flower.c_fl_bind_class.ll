; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_bind_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_bind_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_filter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @fl_bind_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_bind_class(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cls_fl_filter*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cls_fl_filter*
  store %struct.cls_fl_filter* %9, %struct.cls_fl_filter** %7, align 8
  %10 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %11 = icmp ne %struct.cls_fl_filter* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %14 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %7, align 8
  %22 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %12, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
