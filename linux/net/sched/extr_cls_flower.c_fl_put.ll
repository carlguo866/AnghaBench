; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_fl_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i8*)* @fl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fl_put(%struct.tcf_proto* %0, i8* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cls_fl_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cls_fl_filter*
  store %struct.cls_fl_filter* %7, %struct.cls_fl_filter** %5, align 8
  %8 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %5, align 8
  %9 = call i32 @__fl_put(%struct.cls_fl_filter* %8)
  ret void
}

declare dso_local i32 @__fl_put(%struct.cls_fl_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
