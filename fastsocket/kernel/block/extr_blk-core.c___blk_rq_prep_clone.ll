; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_rq_prep_clone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_rq_prep_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@REQ_CLONE_MASK = common dso_local global i32 0, align 4
@REQ_NOMERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.request*)* @__blk_rq_prep_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blk_rq_prep_clone(%struct.request* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REQ_CLONE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @REQ_NOMERGE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.request*, %struct.request** %4, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = call i32 @blk_rq_pos(%struct.request* %24)
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = call i32 @blk_rq_bytes(%struct.request* %28)
  %30 = load %struct.request*, %struct.request** %3, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.request*, %struct.request** %3, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.request*, %struct.request** %4, align 8
  %43 = getelementptr inbounds %struct.request, %struct.request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
