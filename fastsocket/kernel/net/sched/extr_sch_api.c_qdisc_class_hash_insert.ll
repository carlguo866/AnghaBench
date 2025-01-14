; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_class_hash_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_class_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_class_hash = type { i32, i32*, i32 }
%struct.Qdisc_class_common = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_class_hash_insert(%struct.Qdisc_class_hash* %0, %struct.Qdisc_class_common* %1) #0 {
  %3 = alloca %struct.Qdisc_class_hash*, align 8
  %4 = alloca %struct.Qdisc_class_common*, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc_class_hash* %0, %struct.Qdisc_class_hash** %3, align 8
  store %struct.Qdisc_class_common* %1, %struct.Qdisc_class_common** %4, align 8
  %6 = load %struct.Qdisc_class_common*, %struct.Qdisc_class_common** %4, align 8
  %7 = getelementptr inbounds %struct.Qdisc_class_common, %struct.Qdisc_class_common* %6, i32 0, i32 0
  %8 = call i32 @INIT_HLIST_NODE(i32* %7)
  %9 = load %struct.Qdisc_class_common*, %struct.Qdisc_class_common** %4, align 8
  %10 = getelementptr inbounds %struct.Qdisc_class_common, %struct.Qdisc_class_common* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %13 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @qdisc_class_hash(i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.Qdisc_class_common*, %struct.Qdisc_class_common** %4, align 8
  %17 = getelementptr inbounds %struct.Qdisc_class_common, %struct.Qdisc_class_common* %16, i32 0, i32 0
  %18 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %19 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @hlist_add_head(i32* %17, i32* %23)
  %25 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %26 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  ret void
}

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @qdisc_class_hash(i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
